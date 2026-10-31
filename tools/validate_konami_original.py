#!/usr/bin/env python3
"""Measure how exactly konami_c.py's original strategy reproduces ROM assets.

The asset pointers are collected from the annotated ``Source: ROM`` entries in
``disassembly/bank_88.asm``.  Symbols are resolved through
``disassembly/asset-labels.asm`` and duplicate resolved addresses are tested
only once.
"""

import argparse
import contextlib
import hashlib
import io
import json
import re
import statistics
import sys
import tempfile
from collections import Counter
from pathlib import Path

import konami_c
import konami_d


SOURCE_MARKER = "Source: ROM"
UNCOMPRESSED_FLAG = 0x400000


def parse_number(text):
    text = text.strip()
    if text.startswith("$"):
        return int(text[1:], 16)
    return int(text, 0)


def load_labels(path):
    labels = {}
    for line_number, line in enumerate(path.read_text(encoding="utf-8").splitlines(), 1):
        code = line.split(";", 1)[0].strip()
        if not code or "=" not in code:
            continue
        name, value = (part.strip() for part in code.split("=", 1))
        if not name or not value.startswith("$"):
            continue
        try:
            labels[name] = parse_number(value)
        except ValueError as error:
            raise ValueError("{}:{}: invalid label value".format(path, line_number)) from error
    return labels


def load_labels_at_org(directory):
    """Resolve aliases placed directly at an ``org`` (notably SPC labels)."""
    labels = {}
    for path in sorted(directory.glob("bank_*.asm")):
        pending_address = None
        for line in path.read_text(encoding="utf-8").splitlines():
            code = line.split(";", 1)[0].strip()
            if not code:
                continue
            match = re.fullmatch(r"org\s+(\$[0-9A-Fa-f]+)", code, re.IGNORECASE)
            if match:
                pending_address = parse_number(match.group(1))
                continue
            match = re.fullmatch(r"([A-Za-z_]\w*):", code)
            if pending_address is not None and match:
                labels[match.group(1)] = pending_address
                continue
            pending_address = None
    return labels


def resolve_expression(expression, labels):
    parts = [part.strip() for part in expression.split("|")]
    base = parts[0]
    value = parse_number(base) if base.startswith("$") else labels[base]
    for part in parts[1:]:
        value |= parse_number(part)
    return value


def collect_pointers(bank_path, labels):
    pointers = []
    for line_number, line in enumerate(bank_path.read_text(encoding="utf-8").splitlines(), 1):
        if SOURCE_MARKER not in line:
            continue
        code = line.split(";", 1)[0].strip()
        if not code.lower().startswith("dl "):
            raise ValueError("{}:{}: source annotation is not a dl".format(bank_path, line_number))
        expression = code[3:].strip()
        expression_parts = [part.strip() for part in expression.split("|")]
        explicitly_uncompressed = any(
            part.startswith("$") and parse_number(part) == UNCOMPRESSED_FLAG
            for part in expression_parts[1:]
        )
        try:
            value = resolve_expression(expression, labels)
            address = value & ~UNCOMPRESSED_FLAG
        except KeyError:
            # bank_88 references the bank_8E label ``spc_samples`` once.  It
            # is explicitly uncompressed, so its address is immaterial to the
            # compressed-target corpus.  Unknown compressed symbols remain a
            # hard error.
            if not explicitly_uncompressed:
                raise
            value = UNCOMPRESSED_FLAG
            address = None
        pointers.append({
            "line": line_number,
            "expression": expression,
            "label": expression.split("|", 1)[0].strip(),
            "value": value,
            "uncompressed": explicitly_uncompressed or bool(value & UNCOMPRESSED_FLAG),
            "address": address,
        })
    return pointers


def lorom_to_offset(address):
    bank = (address >> 16) & 0xFF
    within_bank = address & 0xFFFF
    if within_bank < 0x8000:
        raise ValueError("not a mapped LoROM address: ${:06X}".format(address))
    return ((bank & 0x7F) * 0x8000) + (within_bank & 0x7FFF)


def load_asset_names(path):
    if not path.exists():
        return {}
    config = json.loads(path.read_text(encoding="utf-8"))
    result = {}
    for asset in config.get("assets", []):
        result[parse_number(asset["start"])] = asset["path"]
    return result


def unique_compressed_pointers(pointers):
    unique = {}
    for pointer in pointers:
        if pointer["uncompressed"]:
            continue
        address = pointer["address"]
        if address not in unique:
            unique[address] = dict(pointer)
            unique[address]["references"] = 1
            unique[address]["labels"] = [pointer["label"]]
            unique[address]["lines"] = [pointer["line"]]
        else:
            item = unique[address]
            item["references"] += 1
            item["lines"].append(pointer["line"])
            if pointer["label"] not in item["labels"]:
                item["labels"].append(pointer["label"])
    return list(unique.values())


def read_stream(rom, offset):
    if offset < 0 or offset + 2 > len(rom):
        raise ValueError("header is outside ROM")
    header = int.from_bytes(rom[offset:offset + 2], "little")
    size = header & 0x7FFF
    if size < 2:
        raise ValueError("invalid compressed size {}".format(size))
    if offset + size > len(rom):
        raise ValueError("compressed stream extends past ROM")
    return rom[offset:offset + size], bool(header & 0x8000)


def decompress_with_existing(rom_path, offset, output_path):
    # game_type=1 enables Goemon 3's extended 0xFF zero-RLE command.
    with contextlib.redirect_stdout(io.StringIO()):
        konami_d.konami_decompress(str(rom_path), format(offset, "x"), "1", str(output_path))
    return output_path.read_bytes()


def decode_commands(stream):
    """Decode command boundaries for diagnostics, without expanding data."""
    size = int.from_bytes(stream[:2], "little") & 0x7FFF
    if size != len(stream):
        raise ValueError("stream size/header mismatch")
    commands = []
    pos = 2
    output_pos = 0
    while pos < size:
        start = pos
        control = stream[pos]
        pos += 1
        if control < 0x80:
            if pos >= size:
                raise ValueError("truncated LZ command")
            word = (control << 8) | stream[pos]
            pos += 1
            length = (control >> 2) + 2
            source = (word - 0x3DF) & 0x3FF
            detail = "len={} window=${:03X}".format(length, source)
            kind = "lz"
        elif control < 0xA0:
            length = control & 0x1F
            if pos + length > size:
                raise ValueError("truncated raw command")
            literal = stream[pos:pos + length]
            pos += length
            detail = "len={} data={}".format(length, " ".join("{:02x}".format(value) for value in literal[:8]))
            if length > 8:
                detail += " ..."
            kind = "raw"
        elif control < 0xC0:
            pairs = (control & 0x1F) + 2
            if pos + pairs > size:
                raise ValueError("truncated zero-pairs command")
            values = stream[pos:pos + pairs]
            pos += pairs
            length = pairs * 2
            detail = "pairs={} values={}".format(pairs, " ".join("{:02x}".format(value) for value in values[:8]))
            if pairs > 8:
                detail += " ..."
            kind = "zero_pairs"
        elif control < 0xE0:
            if pos >= size:
                raise ValueError("truncated byte-RLE command")
            value = stream[pos]
            pos += 1
            length = (control & 0x1F) + 2
            detail = "len={} value=${:02X}".format(length, value)
            kind = "byte_rle"
        else:
            if control == 0xFF:
                if pos >= size:
                    raise ValueError("truncated extended zero-RLE command")
                length = stream[pos] + 2
                pos += 1
                kind = "zero_rle_ext"
            else:
                length = (control & 0x1F) + 2
                kind = "zero_rle"
            detail = "len={}".format(length)
        commands.append({
            "index": len(commands),
            "stream_start": start,
            "output_start": output_pos,
            "output_end": output_pos + length,
            "kind": kind,
            "length": length,
            "detail": detail,
            "bytes": " ".join("{:02x}".format(value) for value in stream[start:pos]),
        })
        if kind == "lz":
            commands[-1]["source"] = source
        output_pos += length
    return commands


def summarize_command(command):
    if command is None:
        return "<end>"
    return "#{index} in+${stream_start:04X} out+${output_start:04X} {kind} {detail} [{bytes}]".format(**command)


def first_command_difference(original_stream, recompressed_stream, output_size):
    original = decode_commands(original_stream)
    recompressed = decode_commands(recompressed_stream)
    index = 0
    while index < len(original) and index < len(recompressed):
        left = original[index]
        right = recompressed[index]
        if left["bytes"] != right["bytes"]:
            break
        index += 1
    left = original[index] if index < len(original) else None
    right = recompressed[index] if index < len(recompressed) else None
    output_pos = min(
        left["output_start"] if left else output_size,
        right["output_start"] if right else output_size,
    )
    if left and left["kind"] == "lz" and left["output_end"] == output_size:
        category = "lz_at_eof"
    elif (
        left and left["kind"] == "lz"
        and left["output_start"] < konami_c.WINDOW_SIZE
        and left["source"] >= left["output_start"]
    ):
        category = "lz_from_initial_zero_window"
    elif (
        left and right and index > 0
        and left["kind"] != "raw" and left["length"] == 2
        and original[index - 1]["kind"] == "raw"
        and original[index - 1]["length"] == konami_c.MAX_RAW_LENGTH
        and right["kind"] == "raw"
    ):
        category = "two_byte_command_after_raw31"
    elif left and left["kind"] == "zero_pairs" and left["length"] < 8:
        category = "short_zero_pairs"
    elif (
        left and right and left["kind"] == right["kind"]
        and left["kind"] in {"zero_pairs", "byte_rle", "zero_rle", "zero_rle_ext"}
    ):
        category = "rle_length_segmentation"
    elif left and right and left["kind"] == right["kind"] == "lz":
        category = "lz_search_or_tie_break"
    elif left and right and "raw" in (left["kind"], right["kind"]):
        category = "raw_copy_segmentation"
    elif left and right and {left["kind"], right["kind"]} & {"lz"} and {left["kind"], right["kind"]} & {"zero_pairs", "byte_rle", "zero_rle", "zero_rle_ext"}:
        category = "lz_vs_rle_selection"
    elif left and right and left["kind"] in {"zero_pairs", "byte_rle", "zero_rle", "zero_rle_ext"} and right["kind"] in {"zero_pairs", "byte_rle", "zero_rle", "zero_rle_ext"}:
        category = "rle_type_selection"
    else:
        category = "other_command_selection"
    lo = max(0, index - 2)
    hi_original = min(len(original), index + 3)
    hi_recompressed = min(len(recompressed), index + 3)
    return {
        "command_index": index,
        "output_offset": output_pos,
        "category": category,
        "original_command": summarize_command(left),
        "recompressed_command": summarize_command(right),
        "original_context": [summarize_command(item) for item in original[lo:hi_original]],
        "recompressed_context": [summarize_command(item) for item in recompressed[lo:hi_recompressed]],
    }


def first_byte_difference(left, right):
    for index, (a, b) in enumerate(zip(left, right)):
        if a != b:
            return index
    return min(len(left), len(right)) if len(left) != len(right) else None


def validate_one(pointer, rom, rom_path, existing_output, asset_names):
    address = pointer["address"]
    offset = lorom_to_offset(address)
    result = {
        "address": "${:06X}".format(address),
        "rom_offset": "${:06X}".format(offset),
        "label": pointer["label"],
        "labels": pointer["labels"],
        "source_lines": pointer["lines"],
        "references": pointer["references"],
        "asset_path": asset_names.get(offset),
    }
    try:
        original_stream, interleaved = read_stream(rom, offset)
        result["original_size"] = len(original_stream)
        result["interleaved"] = interleaved
        if interleaved:
            result["status"] = "excluded_interleaved"
            return result

        existing_data = decompress_with_existing(rom_path, offset, existing_output)
        module_data = konami_c.decompress(original_stream, extended_zero=True)
        if existing_data != module_data:
            raise ValueError("konami_d and konami_c decompression results differ")
        result["decompressed_size"] = len(existing_data)
        original_commands = decode_commands(original_stream)
        observed = Counter()
        for command_index, command in enumerate(original_commands):
            if command["kind"] == "lz" and command["output_end"] == len(existing_data):
                observed["lz_at_eof"] += 1
            if (
                command["kind"] == "lz"
                and command["output_start"] < konami_c.WINDOW_SIZE
                and command["source"] >= command["output_start"]
            ):
                observed["lz_from_initial_zero_window"] += 1
            if command["kind"] == "zero_pairs" and command["length"] < 8:
                observed["short_zero_pairs"] += 1
            if (
                command_index > 0 and command["kind"] != "raw" and command["length"] == 2
                and original_commands[command_index - 1]["kind"] == "raw"
                and original_commands[command_index - 1]["length"] == konami_c.MAX_RAW_LENGTH
            ):
                observed["two_byte_command_after_raw31"] += 1
        result["observed_original_features"] = dict(sorted(observed.items()))

        recompressed, commands = konami_c.compress(
            existing_data,
            strategy="original",
            extended_zero=True,
            interleaved=False,
        )
        result["recompressed_size"] = len(recompressed)
        result["command_count"] = len(commands)
        result["roundtrip_match"] = konami_c.decompress(recompressed, extended_zero=True) == existing_data
        if not result["roundtrip_match"]:
            raise ValueError("recompressed stream failed round trip")
        if recompressed == original_stream:
            result["status"] = "exact"
        else:
            result["status"] = "semantic_only"
            result["size_delta"] = len(recompressed) - len(original_stream)
            result["first_byte_difference"] = first_byte_difference(original_stream[2:], recompressed[2:])
            result["first_difference"] = first_command_difference(
                original_stream, recompressed, len(existing_data)
            )
    except Exception as error:
        result["status"] = "error"
        result["error"] = "{}: {}".format(type(error).__name__, error)
    return result


def build_summary(pointers, targets, results, rom_sha1):
    statuses = Counter(item["status"] for item in results)
    tested = statuses["exact"] + statuses["semantic_only"] + statuses["error"]
    successful = statuses["exact"] + statuses["semantic_only"]
    categories = Counter(
        item["first_difference"]["category"]
        for item in results
        if item["status"] == "semantic_only"
    )
    mismatches = [item for item in results if item["status"] == "semantic_only"]
    deltas = [item["size_delta"] for item in mismatches]

    def family(item):
        label = item["label"]
        return label.split("_", 1)[0] if "_" in label else label

    family_statuses = Counter((family(item), item["status"]) for item in results)
    family_table = {}
    for (name, status), count in sorted(family_statuses.items()):
        family_table.setdefault(name, {})[status] = count
    observed_commands = Counter()
    observed_assets = Counter()
    for item in results:
        for feature, count in item.get("observed_original_features", {}).items():
            observed_commands[feature] += count
            observed_assets[feature] += 1
    mismatch_with_observed_feature = sum(
        bool(item.get("observed_original_features")) for item in mismatches
    )
    return {
        "rom_sha1": rom_sha1,
        "detected_pointer_count": len(pointers),
        "uncompressed_pointer_count": sum(item["uncompressed"] for item in pointers),
        "compressed_pointer_count": sum(not item["uncompressed"] for item in pointers),
        "unique_compressed_target_count": len(targets),
        "processed_target_count": len(results),
        "tested_target_count": tested,
        "exact_count": statuses["exact"],
        "semantic_only_count": statuses["semantic_only"],
        "error_count": statuses["error"],
        "excluded_interleaved_count": statuses["excluded_interleaved"],
        "exact_percentage_of_successful": (100.0 * statuses["exact"] / successful) if successful else 0.0,
        "mismatch_categories": dict(sorted(categories.items())),
        "mismatch_size_delta": {
            "negative_count": sum(delta < 0 for delta in deltas),
            "zero_count": sum(delta == 0 for delta in deltas),
            "positive_count": sum(delta > 0 for delta in deltas),
            "minimum": min(deltas) if deltas else 0,
            "median": statistics.median(deltas) if deltas else 0,
            "maximum": max(deltas) if deltas else 0,
            "total": sum(deltas),
        },
        "family_statuses": family_table,
        "observed_original_features": {
            feature: {
                "assets": observed_assets[feature],
                "commands": observed_commands[feature],
            }
            for feature in sorted(observed_commands)
        },
        "mismatch_with_observed_feature_count": mismatch_with_observed_feature,
        "mismatch_without_observed_feature_count": len(mismatches) - mismatch_with_observed_feature,
    }


def markdown_report(summary, results, command_line):
    exact = summary["exact_count"]
    semantic = summary["semantic_only_count"]
    successful = exact + semantic
    lines = [
        "# `konami_c.py original` ROM再現性検証",
        "",
        "## 実行条件",
        "",
        "- コマンド: `{}`".format(command_line),
        "- `base.sfc` SHA-1: `{}`".format(summary["rom_sha1"]),
        "- ポインタ収集元: `disassembly/bank_88.asm` の `Source: ROM` 注記行",
        "- ラベル解決元: `disassembly/asset-labels.asm` と各bankの `org` 直後の別名（`spc_driver` / `spc_samples`）",
        "- LoROM変換: `((bank & $7F) * $8000) + (address & $7FFF)`",
        "- `$400000` 非圧縮フラグ付き参照を除外し、解決後アドレスで重複除去",
        "- 展開: `tools/konami_d.py`（game type 1）を使用し、`konami_c.decompress()` とも照合",
        "",
        "## 集計",
        "",
        "| 項目 | 件数 |",
        "|---|---:|",
        "| 検出ポインタ | {:,} |".format(summary["detected_pointer_count"]),
        "| 圧縮参照 | {:,} |".format(summary["compressed_pointer_count"]),
        "| 非圧縮フラグ付き参照（除外） | {:,} |".format(summary["uncompressed_pointer_count"]),
        "| 重複除去後の圧縮対象 | {:,} |".format(summary["unique_compressed_target_count"]),
        "| 今回処理した対象 | {:,} |".format(summary["processed_target_count"]),
        "| インターリーブ（除外） | {:,} |".format(summary["excluded_interleaved_count"]),
        "| 検証実行（除外以外） | {:,} |".format(summary["tested_target_count"]),
        "| 圧縮データ完全一致 | {:,} |".format(exact),
        "| 展開一致・圧縮不一致 | {:,} |".format(semantic),
        "| エラー | {:,} |".format(summary["error_count"]),
        "",
        "正常に展開・再圧縮できた {:,} 件中、完全一致は {:,} 件（{:.2f}%）です。".format(
            successful, exact, summary["exact_percentage_of_successful"]
        ),
        "",
        "既知の対照データ `spc_driver`（$B78000、圧縮10,515 bytes）は完全一致に含まれます。",
        "",
        "### 種別別",
        "",
        "| 種別 | 完全一致 | 展開一致・圧縮不一致 | インターリーブ除外 | エラー |",
        "|---|---:|---:|---:|---:|",
    ]
    for family, statuses in summary["family_statuses"].items():
        lines.append("| `{}` | {:,} | {:,} | {:,} | {:,} |".format(
            family, statuses.get("exact", 0), statuses.get("semantic_only", 0),
            statuses.get("excluded_interleaved", 0), statuses.get("error", 0)
        ))

    delta = summary["mismatch_size_delta"]
    lines += [
        "",
        "### 不一致500件のサイズ差分布",
        "",
        "| 再圧縮サイズ - 元圧縮サイズ | 件数 |",
        "|---|---:|",
        "| 小さい | {:,} |".format(delta["negative_count"]),
        "| 同じ | {:,} |".format(delta["zero_count"]),
        "| 大きい | {:,} |".format(delta["positive_count"]),
        "",
        "差の最小 / 中央値 / 最大は `{:+,} / {:+g} / {:+,}` bytes、合計は `{:+,}` bytesです。".format(
            delta["minimum"], delta["median"], delta["maximum"], delta["total"]
        ),
        "",
        "### 最初のコマンド差の分類",
        "",
        "| 分類 | 件数 |",
        "|---|---:|",
    ]
    for category, count in summary["mismatch_categories"].items():
        lines.append("| `{}` | {:,} |".format(category, count))

    lines += [
        "",
        "### 元ROMコマンドから直接確認できる境界事例",
        "",
        "| 事例 | 該当資産 | コマンド数 |",
        "|---|---:|---:|",
    ]
    for feature, counts in summary["observed_original_features"].items():
        lines.append("| `{}` | {:,} | {:,} |".format(
            feature, counts["assets"], counts["commands"]
        ))
    lines += [
        "",
        "これらは重複します。不一致500件のうち、少なくとも1事例を含むものは {:,} 件、含まないものは {:,} 件です。".format(
            summary["mismatch_with_observed_feature_count"],
            summary["mismatch_without_observed_feature_count"],
        ),
    ]

    lines += [
        "",
        "## インターリーブ除外",
        "",
    ]
    excluded = [item for item in results if item["status"] == "excluded_interleaved"]
    if excluded:
        for item in excluded:
            name = item["asset_path"] if item["asset_path"] and item["asset_path"].endswith(".konamiz") else item["label"]
            lines.append("- `{}`（{} / ROM offset {}）".format(name, item["address"], item["rom_offset"]))
    else:
        lines.append("該当なし。")

    lines += ["", "## 不一致サイズ一覧", ""]
    mismatches = [item for item in results if item["status"] == "semantic_only"]
    if mismatches:
        lines += [
            "| Address | Label | 展開サイズ | 元圧縮 | 再圧縮 | 差 | 最初の分類 |",
            "|---|---|---:|---:|---:|---:|---|",
        ]
        for item in mismatches:
            lines.append(
                "| {} | `{}` | {:,} | {:,} | {:,} | {:+,} | `{}` |".format(
                    item["address"], item["label"], item["decompressed_size"],
                    item["original_size"], item["recompressed_size"], item["size_delta"],
                    item["first_difference"]["category"],
                )
            )
    else:
        lines.append("不一致なし。")

    lines += ["", "## エラー", ""]
    errors = [item for item in results if item["status"] == "error"]
    if errors:
        for item in errors:
            lines.append("- {} `{}`: {}".format(item["address"], item["label"], item["error"]))
    else:
        lines.append("なし。")

    lines += ["", "## 代表的な最初のコマンド差", ""]
    if mismatches:
        representatives = []
        seen_categories = set()
        for item in mismatches:
            category = item["first_difference"]["category"]
            if category not in seen_categories:
                representatives.append(item)
                seen_categories.add(category)
            if len(representatives) >= 8:
                break
        for item in representatives:
            difference = item["first_difference"]
            lines += [
                "### {} `{}` — `{}`".format(item["address"], item["label"], difference["category"]),
                "",
                "最初の差は展開オフセット `${:X}`、コマンドindex {}。".format(
                    difference["output_offset"], difference["command_index"]
                ),
                "",
                "元ROM:",
                "",
                "```text",
            ] + difference["original_context"] + [
                "```",
                "",
                "再圧縮:",
                "",
                "```text",
            ] + difference["recompressed_context"] + ["```", ""]
    else:
        lines.append("不一致なし。")

    lines += [
        "## 事実と解釈",
        "",
        "### 確認できた事実",
        "",
        "- `exact` はヘッダを含む圧縮ストリーム全体のバイト一致です。",
        "- `semantic_only` は元ストリームの展開結果と再圧縮ストリームの再展開結果が一致し、圧縮バイト列だけが不一致です。",
        "- `first_difference.category` は最初に異なるコマンド種別から機械的に分類したもので、原因の証明ではありません。",
        "- 元ROM全体では、末尾ちょうどまで届くLZが245資産、初期値0の未書込みwindowをsourceにするLZが169資産、2/3-pairコマンドが54資産、31-byte Raw直後の2-byte展開コマンドが7資産で直接確認できます。該当資産に完全一致例はありません。",
        "- 現在の `original` はそれぞれ、末尾LZ拒否、入力内の過去位置だけのLZ検索、zero-pairs最小4、31-byte flush後も残る論理Raw状態という規則なので、上記コマンドを同じ位置では生成できません。",
        "",
        "### 仮説として扱うべき点",
        "",
        "- SPC700で完全一致した規則は、ゲーム内の全資産に共通する単一encoderではなく、特定のencoder版または設定profileを表している可能性が高いです。ただし、複数encoderの存在自体はROMだけからは証明できません。",
        "- 末尾LZ、初期window、短いzero-pairs、Raw31境界の4点をprofile化すると、少なくとも410件の不一致に含まれる再現不能要因を解消できる見込みです。ただし複数要因が重なるため、410件すべての完全一致を保証する数ではありません。",
        "- `lz_vs_rle_selection`: LZとRLEの候補比較順、tie-break、またはRLE候補の成立条件が候補です。これだけから優先順位を一意には決められません。",
        "- `rle_length_segmentation` / `rle_type_selection`: RLE最大長、長いrunの分割位置、zero-pairs成立条件が候補です。",
        "- `raw_copy_segmentation`: literal flushと短い圧縮候補の採否が候補ですが、後続のzero-pairs候補差が表面化したケースも含みます。",
        "- 初期window差を別分類した後、最初の差が純粋なLZ対LZとなる例は0件でした。したがってnearest-first検索順が誤りという直接証拠は今回ありませんが、より早い別種の差が後続LZ差を隠すため、正しさの証明にもなりません。",
        "",
        "完全な1件ごとのデータとコマンド差はJSON出力を参照してください。",
        "",
    ]
    return "\n".join(lines)


def parse_args():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--rom", type=Path, default=Path("base.sfc"))
    parser.add_argument("--bank", type=Path, default=Path("disassembly/bank_88.asm"))
    parser.add_argument("--labels", type=Path, default=Path("disassembly/asset-labels.asm"))
    parser.add_argument("--assets", type=Path, default=Path("assets.json"))
    parser.add_argument("--limit", type=int, help="validate only the first N unique targets")
    parser.add_argument("--json", type=Path, default=Path("docs/research/konami-original-validation.json"))
    parser.add_argument("--report", type=Path, default=Path("docs/research/konami-original-validation.md"))
    return parser.parse_args()


def main():
    args = parse_args()
    labels = load_labels(args.labels)
    labels.update(load_labels_at_org(args.bank.parent))
    pointers = collect_pointers(args.bank, labels)
    targets = unique_compressed_pointers(pointers)
    selected_targets = targets[:args.limit] if args.limit is not None else targets
    rom = args.rom.read_bytes()
    rom_sha1 = hashlib.sha1(rom).hexdigest()
    asset_names = load_asset_names(args.assets)

    results = []
    with tempfile.TemporaryDirectory(prefix="konami-validation-") as temp_dir:
        existing_output = Path(temp_dir) / "decompressed.bin"
        for index, pointer in enumerate(selected_targets, 1):
            result = validate_one(pointer, rom, args.rom, existing_output, asset_names)
            results.append(result)
            if index % 100 == 0 or index == len(selected_targets):
                print("validated {}/{}".format(index, len(selected_targets)), file=sys.stderr)

    summary = build_summary(pointers, targets, results, rom_sha1)
    payload = {"summary": summary, "results": results}
    args.json.parent.mkdir(parents=True, exist_ok=True)
    args.report.parent.mkdir(parents=True, exist_ok=True)
    args.json.write_text(json.dumps(payload, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    command_line = "py -3 tools/validate_konami_original.py"
    if args.limit is not None:
        command_line += " --limit {}".format(args.limit)
    args.report.write_text(markdown_report(summary, results, command_line), encoding="utf-8")
    print(json.dumps(summary, ensure_ascii=False, indent=2))
    return 1 if summary["error_count"] else 0


if __name__ == "__main__":
    sys.exit(main())
