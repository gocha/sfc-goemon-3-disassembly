# Konami SNES Compressor Strategies

This document describes the compression strategies implemented by
[`tools/konami_c.py`](../tools/konami_c.py).  For the byte-stream format and
decompression rules, see [Konami SNES Compression](konami-snes-compression.md).

The same uncompressed data can be represented by many valid command streams.
Consequently, producing data that decompresses correctly is not sufficient for
a matching disassembly: reproducing an original ROM stream also requires the
original compressor's parsing order, search direction, limits, and tie-breaks.

## Command-line usage

```text
python tools/konami_c.py INPUT OUTPUT
python tools/konami_c.py INPUT OUTPUT --strategy original
python tools/konami_c.py INPUT OUTPUT --strategy original-v2
python tools/konami_c.py INPUT OUTPUT --strategy best
python tools/konami_c.py INPUT OUTPUT --strategy proton
```

Options:

| Option | Description |
|--------|-------------|
| `--strategy original` | Preserve the SPC700-derived parser as the comparison baseline. This remains the default for compatibility. |
| `--strategy original-v2` | Use the improved Ganbare Goemon 3 parser inferred from the full non-interleaved ROM corpus. |
| `--strategy best` | Use dynamic programming to minimize the encoded byte count. |
| `--strategy proton` | Reproduce ProtonNoir `konami_c` command selection. |
| `--variant extended` | Treat `0xFF` as Extended Zero RLE. This is the default and is used by Ganbare Goemon 3. |
| `--variant early` | Treat `0xFF` as a normal 33-byte Zero RLE command. |
| `--interleave` | Transform each 16-byte tile block before compression and set header bit 15. |
| `--no-verify` | Skip the built-in decompression round-trip check. |

The compressor normally decompresses its own result and compares it with the
input before writing the output file.  An error is reported if the round trip
does not match.

The module can also be used from Python:

```python
from tools.konami_c import compress, decompress

stream, commands = compress(data, strategy="original")
assert decompress(stream) == data
```

## Alternating-zero command (`0xA0`-`0xBF`)

This command does not repeat a single `[00 V]` pair.  If the command encodes
`n` pairs, it is followed by `n` independent value bytes:

```text
A? V0 V1 V2 ...
        |
        +--> 00 V0 00 V1 00 V2 ...
```

The low five command bits store `n - 2`, so the format itself can represent
2 through 33 pairs.  Each compression strategy deliberately uses a different
subset of those lengths.

## `original` strategy

The `original` strategy is a deterministic greedy state machine inferred by
comparing `spc700.bin.konamiz` with both its decompressed data and the output of
the public recompressor.

### Candidate generation

At each input position, the encoder finds one RLE candidate and one LZ
candidate.

#### RLE candidate

RLE selection is ordered as follows:

1. If the current byte is zero, count a contiguous zero run.
2. A contiguous run of two or more zeros is selected immediately.  It takes
   precedence over a possibly longer alternating-zero sequence.
3. If there is only one zero, test for an alternating-zero sequence.
4. At a nonzero byte, test for a repeated-byte sequence.

The original-mode limits are:

| Candidate | Minimum | Maximum | Additional condition |
|-----------|---------|---------|----------------------|
| Contiguous zero | 2 bytes | 257 bytes with the extended variant; otherwise 33 | None |
| Alternating zero | 4 pairs / 8 bytes | 16 pairs / 32 bytes | Every even-position byte is zero; value bytes may also be zero |
| Repeated nonzero byte | 2 bytes | 33 bytes | The repeated value is nonzero |

Allowing zero in an alternating command's value positions is important.  Near
the end of `spc700.bin`, the original stream encodes `00 FF` followed by
fifteen `00 00` pairs as one 16-pair alternating-zero command.

#### LZ candidate

The LZ search reproduces the following rules:

* Search no farther than `0x3DF` (991) bytes before the current position.
* Search from the nearest source toward the oldest source.
* Retain the first source when two matches have the same length.  This selects
  the most recent match.
* Limit the match to 33 bytes.
* Permit source and destination ranges to overlap.
* Do not use an LZ match whose end is exactly the input end.  This is an
  original-encoder endpoint quirk, rather than a decompressor limitation.

The offset written to the command is the source position modulo `0x400`,
adjusted by `0x3DF` as required by the stream format.

### Candidate selection

The RLE and LZ candidates are compared by the number of decompressed bytes they
consume, not by their encoded cost:

```text
if LZ length > RLE length:
    choose LZ
else:
    choose RLE
```

Thus RLE wins a length tie.  This local greedy comparison is intentionally not
globally size-optimal.

### Literal-run state

Bytes not consumed by a selected compressed command are accumulated into a
Raw Copy run.  A physical Raw Copy command can hold at most 31 bytes, but the
original compressor retains a separate logical `in_raw_run` state.

When the 31-byte buffer fills:

1. Emit the 31-byte Raw Copy command.
2. Clear the physical buffer.
3. Keep `in_raw_run = true`.

The state becomes false only after a non-raw command is emitted.  Therefore a
two-byte LZ or RLE candidate found exactly at a 31-byte boundary is treated as
part of the existing literal run, even though the physical raw buffer is empty.

If the chosen LZ or RLE candidate has an expansion length of two while
`in_raw_run` is true, the encoder adds one input byte to the literal run and
repeats candidate detection at the next byte.  This rule prevents short
commands from needlessly splitting a literal region and is required for exact
matching.

### Verified SPC700 result

For `disassembly/sound/spc700.bin`, the strategy produces:

```text
compressed size: 10515 bytes
command count:   2054
byte comparison: identical to spc700.bin.konamiz
round trip:      identical to spc700.bin
```

## `original-v2` strategy

The `original-v2` strategy keeps `original` unchanged as a reproducible
baseline and adds the rules supported by the wider ROM corpus:

* An LZ match may end exactly at the end of the input.
* LZ may read from the decompressor's initially zero-filled 1024-byte window.
* Alternating-zero and LZ candidates are normally compared by encoded savings
  rather than only by their expanded lengths.  LZ is preferred for most of
  these conflicts.
* Three state-dependent exceptions retain the observed alternating-zero
  choice around literal runs and consecutive maximum-length pair commands.

The LZ search distance and direction, non-pair RLE precedence, literal-run
state, and output format remain the same as `original`.

Across the 811 unique, non-interleaved compressed targets collected from
`bank_88.asm`, the result is:

| Strategy | Exact streams | Rate | Newly exact | Baseline regressions | Round-trip errors |
|----------|--------------:|-----:|------------:|---------------------:|------------------:|
| `original` | 311 / 811 | 38.35% | - | - | 0 |
| `original-v2` | 546 / 811 | 67.32% | 235 | 0 | 0 |

The SPC700 stream remains byte-identical.  Detailed methods, experiment
history, remaining mismatches, and the reproducible command are recorded in
[the `original-v2` research report](research/konami-original-v2.md).

## `proton` strategy

This strategy reproduces the public ProtonNoir compressor closely enough to
produce a byte-for-byte match for `spc700-recomp.bin.konamiz`.

Its principal differences from `original` are:

* Alternating-zero sequences use 2 through 33 pairs.
* Every alternating command's value byte must be nonzero.
* LZ sources are searched from oldest to newest, so the oldest source wins a
  length tie.
* The raw/non-raw decision is based only on the current physical raw-buffer
  length.  Flushing 31 bytes loses the logical literal-run state.
* Two-byte Zero RLE is emitted more aggressively than the other two-byte
  commands.

For `spc700.bin`, this strategy produces:

```text
compressed size: 10485 bytes
command count:   2084
byte comparison: identical to spc700-recomp.bin.konamiz
round trip:      identical to spc700.bin
```

The Python implementation always emits a structurally valid `0xFF` command.
This avoids the public C++ implementation's ambiguous single-byte `0xFF` case
when the extended variant encounters exactly 33 zeros.

## `best` strategy

The `best` strategy treats compression as a shortest-path problem over input
positions.

For every position it enumerates:

* Raw Copy lengths 1 through 31.
* Every available LZ length 2 through 33, using the full 1024-byte window.
* Repeated-byte RLE lengths 2 through 33.
* Alternating-zero lengths 2 through 33 pairs.
* All valid short and extended zero-run lengths.

Let `cost[p]` be the minimum number of compressed bytes needed for input from
position `p` to the end.  For every command `c` beginning at `p`, the encoder
evaluates:

```text
encoded_size(c) + cost[p + decompressed_size(c)]
```

The command with the smallest result is stored, then the command path is
reconstructed from position zero.  Equal-cost paths use a stable deterministic
order: specialized RLE commands first, then LZ, and finally raw data; longer
commands are considered before shorter commands within each class.

For the current `spc700.bin`, this produces a 10442-byte stream.  It is smaller
than both known streams, but it is not intended to reproduce either historical
encoder.

## Validation beyond the SPC700 data

Exact agreement for one input establishes the SPC700 reconstruction but does
not prove that every asset in every Konami game used the same compressor build.
The repository's extracted `.konamiz` files can be used as a regression corpus:

1. Decompress each existing stream.
2. Recompress it with both `--strategy original` and
   `--strategy original-v2`.
3. Compare the complete streams, including the two-byte header.
4. Classify mismatches by command boundary, LZ offset tie, and RLE type.

The remaining mismatches may reflect an incomplete state rule or more than one
historical encoder configuration.  Keep such hypotheses separate from
confirmed format behavior, and retain `original` as the fixed comparison
baseline while testing future rules in a named strategy.
