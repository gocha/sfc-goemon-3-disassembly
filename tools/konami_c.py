#!/usr/bin/env python3
"""Compress data in the Konami SNES compression format.

The compressor provides four parsing strategies:

* original: preserve the SPC700-derived greedy parser as a comparison baseline.
* original-v2: apply the rules inferred from the non-interleaved ROM corpus.
* best: choose a minimum-size command path with dynamic programming.
* proton: reproduce the parser used by ProtonNoir's konami_c as closely as
  possible while always emitting a valid stream.

The default remains ``original`` for compatibility.  Use ``original-v2`` when
reproducing the original Ganbare Goemon 3 asset streams.
"""

import argparse
import collections
import sys
from dataclasses import dataclass
from pathlib import Path
from typing import Dict, Iterable, List, Optional, Sequence, Tuple


WINDOW_SIZE = 0x400
ORIGINAL_SEARCH_DISTANCE = 0x3DF
MAX_LZ_LENGTH = 33
MAX_RAW_LENGTH = 31
MAX_INPUT_SIZE = 0x10000
MAX_HEADER_SIZE = 0x7FFF


@dataclass(frozen=True)
class Command:
    kind: str
    length: int
    source: int = 0
    values: bytes = b""
    value: int = 0

    @property
    def encoded_size(self) -> int:
        if self.kind == "raw":
            return self.length + 1
        if self.kind == "lz" or self.kind == "byte_rle":
            return 2
        if self.kind == "zero_rle":
            return 1
        if self.kind == "zero_rle_ext":
            return 2
        if self.kind == "zero_pairs":
            return 1 + len(self.values)
        raise ValueError("Unknown command kind: {}".format(self.kind))


def interleave_tile_data(data: bytes) -> bytes:
    """Convert final tile bytes to the layout stored in the compressed stream."""
    if len(data) % 16 != 0:
        raise ValueError("Interleaved tile data size must be a multiple of 16")

    result = bytearray(len(data))
    for pos in range(0, len(data), 16):
        block = data[pos:pos + 16]
        for index in range(8):
            result[pos + index] = block[index * 2]
            result[pos + index + 8] = block[index * 2 + 1]
    return bytes(result)


def deinterleave_tile_data(data: bytes) -> bytes:
    """Convert the stored tile layout to the final decompressed byte order."""
    if len(data) % 16 != 0:
        raise ValueError("Interleaved tile data size must be a multiple of 16")

    result = bytearray(len(data))
    for pos in range(0, len(data), 16):
        block = data[pos:pos + 16]
        for index in range(8):
            result[pos + index * 2] = block[index]
            result[pos + index * 2 + 1] = block[index + 8]
    return bytes(result)


def _matching_length(data: bytes, source: int, pos: int) -> int:
    length = 0
    limit = min(MAX_LZ_LENGTH, len(data) - pos)
    while length < limit and data[source + length] == data[pos + length]:
        length += 1
    return length


def _matching_window_length(data: bytes, source: int, pos: int) -> int:
    """Match against the decompressor window, including its initial zeros."""
    length = 0
    limit = min(MAX_LZ_LENGTH, len(data) - pos)
    source_index = source & 0x3FF
    while length < limit:
        read_index = (source_index + length) & 0x3FF
        copied_index = (read_index - pos) & 0x3FF
        if copied_index < length:
            value = data[pos + copied_index]
        else:
            previous = pos - 1 - ((pos - 1 - read_index) & 0x3FF)
            value = data[previous] if previous >= 0 else 0
        if value != data[pos + length]:
            break
        length += 1
    return length


def _find_lz(
    data: bytes,
    pos: int,
    search_distance: int,
    nearest_first: bool,
    reject_match_at_eof: bool,
    proton_source_limit: bool = False,
    allow_initial_zero_window: bool = False,
) -> Optional[Command]:
    """Find the longest LZ match using a deterministic offset tie-break."""
    first = pos - search_distance if allow_initial_zero_window else max(0, pos - search_distance)
    sources: Iterable[int]
    if nearest_first:
        sources = range(pos - 1, first - 1, -1)
    else:
        sources = range(first, pos)

    best_length = 0
    best_source = 0
    for source in sources:
        # This reproduces the source-side bound in ProtonNoir's search_lz().
        if proton_source_limit and source + MAX_LZ_LENGTH >= len(data):
            continue
        length = (
            _matching_window_length(data, source, pos)
            if source < 0
            else _matching_length(data, source, pos)
        )
        if length > best_length:
            best_length = length
            best_source = source
            if length == MAX_LZ_LENGTH:
                break

    if best_length < 2:
        return None
    if reject_match_at_eof and pos + best_length >= len(data):
        return None
    return Command("lz", best_length, source=best_source)


def _original_rle(data: bytes, pos: int, extended_zero: bool) -> Optional[Command]:
    """Return the RLE candidate selected by the original Goemon 3 parser."""
    if data[pos] == 0:
        zero_limit = 257 if extended_zero else 33
        length = 1
        while length < zero_limit and pos + length < len(data) and data[pos + length] == 0:
            length += 1

        # A contiguous zero run takes precedence over the alternating-zero
        # command, even when the latter could consume more input.
        if length >= 2:
            kind = "zero_rle_ext" if extended_zero and length > 32 else "zero_rle"
            return Command(kind, length)

        # The original encoder considers 4..16 pairs.  Values in the odd
        # positions may themselves be zero.
        pairs = 0
        while (
            pairs < 16
            and pos + pairs * 2 + 1 < len(data)
            and data[pos + pairs * 2] == 0
        ):
            pairs += 1
        if pairs >= 4:
            length = pairs * 2
            return Command("zero_pairs", length, values=data[pos + 1:pos + length:2])
        return None

    length = 1
    while (
        length < MAX_LZ_LENGTH
        and pos + length < len(data)
        and data[pos + length] == data[pos]
    ):
        length += 1
    if length >= 2:
        return Command("byte_rle", length, value=data[pos])
    return None


def _proton_rle(data: bytes, pos: int, extended_zero: bool) -> Optional[Command]:
    """Return the candidate found by ProtonNoir's search_rle() policy."""
    best: Optional[Command] = None

    # Proton's encoder requires both value bytes used to enter this search to
    # be nonzero, and continues only while every value byte stays nonzero.
    if (
        pos + 3 < len(data)
        and data[pos] == 0
        and data[pos + 1] != 0
        and data[pos + 2] == 0
        and data[pos + 3] != 0
    ):
        pairs = 0
        while (
            pairs < 33
            and pos + pairs * 2 + 1 < len(data)
            and data[pos + pairs * 2] == 0
            and data[pos + pairs * 2 + 1] != 0
        ):
            pairs += 1
        if pairs >= 2:
            length = pairs * 2
            best = Command("zero_pairs", length, values=data[pos + 1:pos + length:2])

    if data[pos] != 0:
        length = 1
        while (
            length < MAX_LZ_LENGTH
            and pos + length < len(data)
            and data[pos + length] == data[pos]
        ):
            length += 1
        if length >= 2 and (best is None or length > best.length):
            best = Command("byte_rle", length, value=data[pos])

    if data[pos] == 0:
        zero_limit = 257 if extended_zero else 33
        length = 1
        while length < zero_limit and pos + length < len(data) and data[pos + length] == 0:
            length += 1
        if length >= 2 and (best is None or length > best.length):
            kind = "zero_rle_ext" if extended_zero and length > 32 else "zero_rle"
            best = Command(kind, length)

    return best


def _emit_command(output: bytearray, command: Command, data: bytes, pos: int) -> None:
    if command.kind == "raw":
        output.append(0x80 | command.length)
        output.extend(data[pos:pos + command.length])
        return

    if command.kind == "lz":
        encoded_offset = (command.source + 0x3DF) & 0x3FF
        word = ((command.length - 2) << 10) | encoded_offset
        output.extend(word.to_bytes(2, "big"))
        return

    if command.kind == "zero_pairs":
        pairs = command.length // 2
        if not 2 <= pairs <= 33:
            raise ValueError("Alternating-zero pair count is out of range")
        output.append(0xA0 | (pairs - 2))
        output.extend(command.values)
        return

    if command.kind == "byte_rle":
        output.extend((0xC0 | (command.length - 2), command.value))
        return

    if command.kind == "zero_rle":
        if not 2 <= command.length <= 33:
            raise ValueError("Short zero RLE length is out of range")
        output.append(0xE0 | (command.length - 2))
        return

    if command.kind == "zero_rle_ext":
        if not 2 <= command.length <= 257:
            raise ValueError("Extended zero RLE length is out of range")
        output.extend((0xFF, command.length - 2))
        return

    raise ValueError("Unknown command kind: {}".format(command.kind))


def _choose_by_length(
    lz: Optional[Command], rle: Optional[Command]
) -> Optional[Command]:
    if lz is not None and (rle is None or lz.length > rle.length):
        return lz
    return rle


def _compress_original(data: bytes, extended_zero: bool) -> Tuple[bytes, List[Command]]:
    output = bytearray()
    commands: List[Command] = []
    raw = bytearray()
    raw_start = 0
    in_raw_run = False
    pos = 0

    def flush_raw() -> None:
        nonlocal raw_start
        if not raw:
            return
        command = Command("raw", len(raw))
        _emit_command(output, command, data, raw_start)
        commands.append(command)
        raw.clear()
        raw_start = pos

    while pos < len(data):
        rle = _original_rle(data, pos, extended_zero)
        lz = _find_lz(
            data,
            pos,
            ORIGINAL_SEARCH_DISTANCE,
            nearest_first=True,
            reject_match_at_eof=True,
        )
        command = _choose_by_length(lz, rle)

        # A two-byte expansion is not allowed to break an existing literal
        # run.  in_raw_run intentionally survives a physical 31-byte flush.
        if command is None or (command.length == 2 and in_raw_run):
            if not raw:
                raw_start = pos
            raw.append(data[pos])
            pos += 1
            in_raw_run = True
            if len(raw) == MAX_RAW_LENGTH:
                flush_raw()
            continue

        flush_raw()
        _emit_command(output, command, data, pos)
        commands.append(command)
        pos += command.length
        raw_start = pos
        in_raw_run = False

    flush_raw()
    return bytes(output), commands


def _compress_original_v2(
    data: bytes, extended_zero: bool
) -> Tuple[bytes, List[Command]]:
    """Improved Goemon 3 parser inferred from the complete ROM asset corpus."""
    output = bytearray()
    commands: List[Command] = []
    raw = bytearray()
    raw_start = 0
    in_raw_run = False
    pos = 0

    def flush_raw() -> None:
        nonlocal raw_start
        if not raw:
            return
        command = Command("raw", len(raw))
        _emit_command(output, command, data, raw_start)
        commands.append(command)
        raw.clear()
        raw_start = pos

    while pos < len(data):
        rle = _original_rle(data, pos, extended_zero)
        lz = _find_lz(
            data,
            pos,
            ORIGINAL_SEARCH_DISTANCE,
            nearest_first=True,
            reject_match_at_eof=False,
            allow_initial_zero_window=True,
        )

        # Zero/value pairs are comparatively expensive, so prefer an LZ
        # candidate even when it consumes fewer input bytes.  Three stateful
        # exceptions reproduce literal-boundary and pair-run behavior seen in
        # the ROM while preserving the SPC700 stream.
        force_lz_over_pairs = (
            lz is not None
            and rle is not None
            and rle.kind == "zero_pairs"
        )
        if (
            force_lz_over_pairs
            and in_raw_run
            and lz.length == 2
        ):
            force_lz_over_pairs = False
        if (
            force_lz_over_pairs
            and commands
            and commands[-1].kind == "zero_pairs"
            and commands[-1].length == 32
            and rle.length == 32
        ):
            force_lz_over_pairs = False
        if (
            force_lz_over_pairs
            and in_raw_run
            and lz.length == 3
            and rle.length == 8
            and all(rle.values)
        ):
            force_lz_over_pairs = False

        if lz is not None and (
            rle is None
            or force_lz_over_pairs
            or (
                rle.kind == "zero_pairs"
                and (
                    lz.length - lz.encoded_size
                    >= rle.length - rle.encoded_size
                )
            )
            or (
                rle.kind != "zero_pairs"
                and (
                    lz.length > rle.length
                )
            )
        ):
            command = lz
        else:
            command = rle

        if command is None or (command.length == 2 and in_raw_run):
            if not raw:
                raw_start = pos
            raw.append(data[pos])
            pos += 1
            in_raw_run = True
            if len(raw) == MAX_RAW_LENGTH:
                flush_raw()
            continue

        flush_raw()
        _emit_command(output, command, data, pos)
        commands.append(command)
        pos += command.length
        raw_start = pos
        in_raw_run = False

    flush_raw()
    return bytes(output), commands


def _compress_proton(data: bytes, extended_zero: bool) -> Tuple[bytes, List[Command]]:
    output = bytearray()
    commands: List[Command] = []
    raw = bytearray()
    raw_start = 0
    pos = 0

    def flush_raw() -> None:
        nonlocal raw_start
        if not raw:
            return
        command = Command("raw", len(raw))
        _emit_command(output, command, data, raw_start)
        commands.append(command)
        raw.clear()
        raw_start = pos

    while pos < len(data):
        rle = _proton_rle(data, pos, extended_zero)
        lz: Optional[Command] = None
        if (rle is None or rle.length <= MAX_LZ_LENGTH) and pos < len(data) - 1:
            lz = _find_lz(
                data,
                pos,
                ORIGINAL_SEARCH_DISTANCE,
                nearest_first=False,
                reject_match_at_eof=True,
                proton_source_limit=True,
            )
        command = _choose_by_length(lz, rle)

        if command is not None and command.kind == "lz":
            if command.length == 2 and raw:
                raw.append(data[pos])
                pos += 1
                if len(raw) == MAX_RAW_LENGTH:
                    flush_raw()
                continue
            flush_raw()
            _emit_command(output, command, data, pos)
            commands.append(command)
            pos += command.length
            raw_start = pos
            continue

        if command is not None:
            # The public C++ encoder special-cases zero RLE before applying
            # the length-two literal rule.
            if command.kind != "zero_rle" and command.length == 2 and raw:
                raw.append(data[pos])
                pos += 1
                if len(raw) == MAX_RAW_LENGTH:
                    flush_raw()
                continue
            flush_raw()
            _emit_command(output, command, data, pos)
            commands.append(command)
            pos += command.length
            raw_start = pos
            continue

        if not raw:
            raw_start = pos
        raw.append(data[pos])
        pos += 1
        if len(raw) == MAX_RAW_LENGTH:
            flush_raw()

    flush_raw()
    return bytes(output), commands


def _best_lz_commands(data: bytes, pos: int) -> List[Command]:
    """Return one nearest-offset candidate for each available LZ length."""
    first = max(0, pos - WINDOW_SIZE)
    source_for_length: Dict[int, int] = {}
    for source in range(pos - 1, first - 1, -1):
        length = _matching_length(data, source, pos)
        for candidate_length in range(2, length + 1):
            if candidate_length not in source_for_length:
                source_for_length[candidate_length] = source
        if len(source_for_length) == MAX_LZ_LENGTH - 1:
            break
    return [
        Command("lz", length, source=source_for_length[length])
        for length in sorted(source_for_length, reverse=True)
    ]


def _best_commands(data: bytes, pos: int, extended_zero: bool) -> Iterable[Command]:
    """Yield valid commands in the tie-break order used by best mode."""
    # Prefer specialized commands, longer spans, and finally raw data when
    # multiple complete paths have the same encoded size.
    if data[pos] == 0:
        zero_limit = 257 if extended_zero else 33
        zero_length = 1
        while (
            zero_length < zero_limit
            and pos + zero_length < len(data)
            and data[pos + zero_length] == 0
        ):
            zero_length += 1
        if extended_zero:
            for length in range(min(32, zero_length), 1, -1):
                yield Command("zero_rle", length)
            for length in range(zero_length, 32, -1):
                yield Command("zero_rle_ext", length)
        else:
            for length in range(zero_length, 1, -1):
                yield Command("zero_rle", length)

        pairs = 0
        while (
            pairs < 33
            and pos + pairs * 2 + 1 < len(data)
            and data[pos + pairs * 2] == 0
        ):
            pairs += 1
        for pair_count in range(pairs, 1, -1):
            length = pair_count * 2
            yield Command(
                "zero_pairs", length, values=data[pos + 1:pos + length:2]
            )
    else:
        length = 1
        while (
            length < MAX_LZ_LENGTH
            and pos + length < len(data)
            and data[pos + length] == data[pos]
        ):
            length += 1
        for candidate_length in range(length, 1, -1):
            yield Command("byte_rle", candidate_length, value=data[pos])

    for command in _best_lz_commands(data, pos):
        yield command

    for length in range(min(MAX_RAW_LENGTH, len(data) - pos), 0, -1):
        yield Command("raw", length)


def _compress_best(data: bytes, extended_zero: bool) -> Tuple[bytes, List[Command]]:
    size = len(data)
    infinity = size * 2 + 1
    costs = [infinity] * (size + 1)
    choices: List[Optional[Command]] = [None] * (size + 1)
    costs[size] = 0

    for pos in range(size - 1, -1, -1):
        for command in _best_commands(data, pos, extended_zero):
            next_pos = pos + command.length
            candidate_cost = command.encoded_size + costs[next_pos]
            if candidate_cost < costs[pos]:
                costs[pos] = candidate_cost
                choices[pos] = command

    output = bytearray()
    commands: List[Command] = []
    pos = 0
    while pos < size:
        command = choices[pos]
        if command is None:
            raise RuntimeError("No compression path at input offset {:#x}".format(pos))
        _emit_command(output, command, data, pos)
        commands.append(command)
        pos += command.length
    return bytes(output), commands


def compress(
    data: bytes,
    strategy: str = "original",
    extended_zero: bool = True,
    interleaved: bool = False,
) -> Tuple[bytes, List[Command]]:
    """Compress data and return the complete stream plus selected commands."""
    if len(data) > MAX_INPUT_SIZE:
        raise ValueError("Input exceeds the 65536-byte decompressor buffer")

    source = interleave_tile_data(data) if interleaved else data
    if strategy == "original":
        payload, commands = _compress_original(source, extended_zero)
    elif strategy == "original-v2":
        payload, commands = _compress_original_v2(source, extended_zero)
    elif strategy == "best":
        payload, commands = _compress_best(source, extended_zero)
    elif strategy == "proton":
        payload, commands = _compress_proton(source, extended_zero)
    else:
        raise ValueError("Unknown strategy: {}".format(strategy))

    total_size = len(payload) + 2
    if total_size > MAX_HEADER_SIZE:
        raise ValueError(
            "Compressed stream is too large for the 15-bit size field: {} bytes".format(
                total_size
            )
        )
    header = total_size | (0x8000 if interleaved else 0)
    return header.to_bytes(2, "little") + payload, commands


def decompress(stream: bytes, extended_zero: bool = True) -> bytes:
    """Decompress a complete stream; used for compressor self-verification."""
    if len(stream) < 2:
        raise ValueError("Compressed stream is missing its size header")
    header = int.from_bytes(stream[:2], "little")
    compressed_size = header & 0x7FFF
    interleaved = bool(header & 0x8000)
    if compressed_size != len(stream):
        raise ValueError(
            "Header size {} does not match stream size {}".format(
                compressed_size, len(stream)
            )
        )

    output = bytearray()
    window = bytearray(WINDOW_SIZE)
    window_pos = 0
    pos = 2

    def write(value: int) -> None:
        nonlocal window_pos
        output.append(value)
        window[window_pos] = value
        window_pos = (window_pos + 1) & 0x3FF

    while pos < compressed_size:
        control = stream[pos]
        pos += 1
        if control < 0x80:
            if pos >= compressed_size:
                raise ValueError("Truncated LZ command")
            next_byte = stream[pos]
            pos += 1
            length = (control >> 2) + 2
            source = (((control << 8) | next_byte) - 0x3DF) & 0x3FF
            for _ in range(length):
                value = window[source]
                write(value)
                source = (source + 1) & 0x3FF
        elif control < 0xA0:
            length = control & 0x1F
            if pos + length > compressed_size:
                raise ValueError("Truncated raw command")
            for value in stream[pos:pos + length]:
                write(value)
            pos += length
        elif control < 0xC0:
            pairs = (control & 0x1F) + 2
            if pos + pairs > compressed_size:
                raise ValueError("Truncated alternating-zero command")
            for value in stream[pos:pos + pairs]:
                write(0)
                write(value)
            pos += pairs
        elif control < 0xE0:
            if pos >= compressed_size:
                raise ValueError("Truncated byte RLE command")
            length = (control & 0x1F) + 2
            value = stream[pos]
            pos += 1
            for _ in range(length):
                write(value)
        else:
            if control == 0xFF and extended_zero:
                if pos >= compressed_size:
                    raise ValueError("Truncated extended zero RLE command")
                length = stream[pos] + 2
                pos += 1
            else:
                length = (control & 0x1F) + 2
            for _ in range(length):
                write(0)

    result = bytes(output)
    return deinterleave_tile_data(result) if interleaved else result


def _build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description="Compress a file using the Konami SNES compression format."
    )
    parser.add_argument("input", type=Path, help="uncompressed input file")
    parser.add_argument("output", type=Path, help="compressed output file")
    parser.add_argument(
        "--strategy",
        choices=("original", "original-v2", "best", "proton"),
        default="original",
        help="command selection policy (default: original)",
    )
    parser.add_argument(
        "--variant",
        choices=("extended", "early"),
        default="extended",
        help="whether 0xFF is extended zero RLE (default: extended)",
    )
    parser.add_argument(
        "--interleave",
        action="store_true",
        help="interleave each 16-byte tile block and set header bit 15",
    )
    parser.add_argument(
        "--no-verify",
        action="store_true",
        help="skip the built-in decompression round-trip check",
    )
    return parser


def main(argv: Optional[Sequence[str]] = None) -> int:
    args = _build_parser().parse_args(argv)
    data = args.input.read_bytes()
    extended_zero = args.variant == "extended"
    stream, commands = compress(
        data,
        strategy=args.strategy,
        extended_zero=extended_zero,
        interleaved=args.interleave,
    )

    if not args.no_verify:
        restored = decompress(stream, extended_zero=extended_zero)
        if restored != data:
            raise RuntimeError("Internal verification failed: decompressed data differs")

    args.output.write_bytes(stream)
    counts = collections.Counter(command.kind for command in commands)
    ratio = (len(stream) / len(data) * 100.0) if data else 0.0
    summary = ", ".join(
        "{}={}".format(kind, counts[kind]) for kind in sorted(counts)
    )
    print(
        "{} -> {} bytes ({:.2f}%), strategy={}, commands={}{}".format(
            len(data),
            len(stream),
            ratio,
            args.strategy,
            len(commands),
            " [{}]".format(summary) if summary else "",
        )
    )
    return 0


if __name__ == "__main__":
    try:
        sys.exit(main())
    except (OSError, ValueError, RuntimeError) as error:
        print("error: {}".format(error), file=sys.stderr)
        sys.exit(1)
