#!/usr/bin/env python3
"""Benchmark konami_c strategies against the non-interleaved ROM corpus."""

import argparse
import collections
import hashlib
import json
import sys
from pathlib import Path

import konami_c


def load_corpus(rom_path, results_path):
    rom = rom_path.read_bytes()
    validation = json.loads(results_path.read_text(encoding="utf-8"))
    corpus = []
    for result in validation["results"]:
        if result["status"] not in ("exact", "semantic_only"):
            continue
        offset = int(result["rom_offset"][1:], 16)
        size = int.from_bytes(rom[offset:offset + 2], "little") & 0x7FFF
        stream = rom[offset:offset + size]
        data = konami_c.decompress(stream, extended_zero=True)
        corpus.append({
            "address": result["address"],
            "label": result["label"],
            "stream": stream,
            "data": data,
            "baseline_exact": result["status"] == "exact",
        })
    return corpus


def duplicate_stream_conflicts(corpus):
    groups = collections.defaultdict(list)
    for item in corpus:
        digest = hashlib.sha1(item["data"]).hexdigest()
        groups[digest].append(item)
    conflicts = []
    for items in groups.values():
        stream_digests = {hashlib.sha1(item["stream"]).hexdigest() for item in items}
        if len(stream_digests) > 1:
            conflicts.append(items)
    return groups, conflicts


def evaluate(corpus, strategy):
    exact = []
    errors = []
    for index, item in enumerate(corpus, 1):
        try:
            stream, _commands = konami_c.compress(
                item["data"], strategy=strategy, extended_zero=True, interleaved=False
            )
            if konami_c.decompress(stream, extended_zero=True) != item["data"]:
                raise RuntimeError("round trip differs")
            if stream == item["stream"]:
                exact.append(item["address"])
        except Exception as error:
            errors.append({
                "address": item["address"],
                "label": item["label"],
                "error": "{}: {}".format(type(error).__name__, error),
            })
        if index % 100 == 0 or index == len(corpus):
            print("{}: {}/{}".format(strategy, index, len(corpus)), file=sys.stderr)
    return set(exact), errors


def parse_args():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("strategies", nargs="*", default=["original"])
    parser.add_argument("--rom", type=Path, default=Path("base.sfc"))
    parser.add_argument(
        "--results",
        type=Path,
        default=Path("docs/research/konami-original-validation.json"),
    )
    parser.add_argument("--output", type=Path)
    parser.add_argument("--duplicates", action="store_true")
    return parser.parse_args()


def main():
    args = parse_args()
    corpus = load_corpus(args.rom, args.results)
    baseline = {item["address"] for item in corpus if item["baseline_exact"]}
    output = {
        "corpus_count": len(corpus),
        "baseline_exact_count": len(baseline),
        "strategies": {},
    }

    if args.duplicates:
        groups, conflicts = duplicate_stream_conflicts(corpus)
        output["decompressed_group_count"] = len(groups)
        output["duplicate_decompressed_group_count"] = sum(
            len(items) > 1 for items in groups.values()
        )
        output["conflicting_stream_group_count"] = len(conflicts)
        output["conflicting_stream_asset_count"] = sum(len(items) for items in conflicts)
        output["conflicting_stream_groups"] = [
            [
                {
                    "address": item["address"],
                    "label": item["label"],
                    "decompressed_size": len(item["data"]),
                    "compressed_size": len(item["stream"]),
                    "stream_sha1": hashlib.sha1(item["stream"]).hexdigest(),
                }
                for item in items
            ]
            for items in conflicts
        ]

    for strategy in args.strategies:
        exact, errors = evaluate(corpus, strategy)
        newly_matched = sorted(exact - baseline)
        regressed = sorted(baseline - exact)
        output["strategies"][strategy] = {
            "exact_count": len(exact),
            "exact_percentage": 100.0 * len(exact) / len(corpus),
            "newly_matched_count": len(newly_matched),
            "regressed_count": len(regressed),
            "newly_matched": newly_matched,
            "regressed": regressed,
            "error_count": len(errors),
            "errors": errors,
            "spc700_exact": "$B78000" in exact,
        }

    text = json.dumps(output, ensure_ascii=False, indent=2)
    if args.output:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(text + "\n", encoding="utf-8")
    print(text)
    return 1 if any(item["error_count"] for item in output["strategies"].values()) else 0


if __name__ == "__main__":
    sys.exit(main())
