# Konami compressor `original-v2` reproduction results

This note closes the first corpus-wide improvement pass for
`tools/konami_c.py`.  The goal was byte-for-byte reproduction of the original
Ganbare Goemon 3 compressed streams while retaining the existing `original`
strategy as a fixed baseline.

## Result

| Measurement | `original` | `original-v2` |
|-------------|-----------:|--------------:|
| Exact compressed streams | 311 / 811 | 546 / 811 |
| Exact rate | 38.35% | 67.32% |
| Newly exact relative to baseline | - | 235 |
| Baseline-exact streams that regressed | - | 0 |
| Semantically correct but byte-different | 500 | 265 |
| Compression or round-trip errors | 0 | 0 |
| SPC700 byte-identical | yes | yes |

The exact count increased by 235 assets and 28.98 percentage points.  Every
generated stream was decompressed again and compared with its source data.

## Corpus

The collection method and baseline details are in
[`konami-original-validation.md`](konami-original-validation.md).  In summary:

| Stage | Count |
|-------|------:|
| Pointer references detected in `bank_88.asm` | 4,539 |
| References marked non-compressed with `|$400000` | 634 |
| Compressed references | 3,905 |
| Unique compressed ROM targets | 1,039 |
| Interleaved targets excluded | 228 |
| Targets tested | 811 |

The LoROM address was converted to a file offset before reading the size
header and complete stream from `base.sfc`.  Each original stream was expanded
with the existing `konami_d.py` implementation during corpus construction and
cross-checked against the decompressor embedded in `konami_c.py`.

## Confirmed improvements

The following statements are confirmed by isolated strategy experiments and
the final full-corpus regression:

1. **Allow LZ at end of input.** Removing the old rejection of an LZ match
   ending exactly at EOF raised the isolated result from 311 to 437 exact
   streams, with no baseline regression.
2. **Model the initial zero window.** Searching the decompressor's initially
   zero-filled 1024-byte window raised the isolated result to 363, also with no
   baseline regression.
3. **Combine both LZ rules.** Together with the original selection rules these
   changes reached 496 exact streams without regression.
4. **Treat alternating-zero versus LZ specially.** Comparing their encoded
   savings, normally preferring LZ, and retaining three observed stateful
   exceptions produced the final 546 exact streams.

The three exceptions cover a two-byte LZ inside an active raw run, consecutive
maximum 16-pair commands, and a specific three-byte-LZ/eight-byte-pair conflict
inside a raw run.  They are expressed in terms of command state and candidate
properties; no ROM address, asset name, or expected compressed byte sequence
is embedded in the compressor.

The final code exposes only `original-v2`; temporary experimental strategies
used to isolate these effects were removed.  `original`, `best`, and `proton`
remain behaviorally separate.

## Experiments that were rejected

The following results helped constrain the final rules:

| Experiment | Exact | New | Regressed | Interpretation |
|------------|------:|----:|----------:|----------------|
| Oldest-first LZ tie break | 85 | 1 | 227 | The original nearest-first order is strongly supported. |
| Broad raw-run rule change | 305 | 3 | 9 | Literal control cannot be replaced by this simple rule. |
| Compare all candidates only by encoded gain | 387 | 124 | 48 | A global cost rule is not the historical greedy selection. |
| Aggressive LZ over pair commands | 551 | 242 | 2 | Higher total, but it breaks SPC700 and one other baseline match. |
| Maximum nonzero-byte RLE length of 32 | 546 | 235 | 0 | No change to the final corpus result. |

The aggressive 551 result was not retained because preserving the known
SPC700 byte identity is an explicit requirement.  Adding state guards restores
SPC700 and all prior exact assets, yielding 546.

## Same data with different original streams

This corpus contains 805 distinct decompressed byte sequences.  Four sequence
groups occur at more than one ROM address.  In all four groups the original
compressed streams are also identical; there are zero groups with conflicting
streams.

This is evidence that a deterministic compressor remains plausible.  It is
not proof that the complete ROM used one encoder build or one configuration:
the duplicate sample is small and does not exercise every asset family.

## Remaining 265 mismatches

The first differing command in each remaining stream was classified with the
same heuristic used by the baseline validator:

| First-difference class | Count |
|------------------------|------:|
| Raw Copy segmentation | 118 |
| RLE length segmentation | 85 |
| Short alternating-zero command | 27 |
| LZ versus RLE selection | 25 |
| Two-byte command immediately after a 31-byte raw command | 7 |
| RLE type selection | 3 |

These labels describe the first visible difference; they do not prove the
underlying cause.  The most common command-pair differences include raw/raw
(82), byte-RLE/byte-RLE (70), raw/alternating-zero (36),
alternating-zero/LZ (19), LZ/byte-RLE (16), and
alternating-zero/raw (15).

### Facts

* All 265 streams expand to the correct bytes after recompression.
* No remaining failure is an invalid stream or a decompression error.
* Many differences occur between commands of the same type, so candidate
  maximum lengths and run-splitting rules remain important.
* A single global switch for LZ order, RLE priority, raw handling, or pair
  length caused substantial regressions in the experiments above.

### Hypotheses

* The historical parser may use additional look-ahead or state when deciding
  whether to split a raw run or an alternating-zero sequence.
* The 32-versus-33-byte nonzero RLE boundary and division of long zero runs may
  depend on context rather than a single global maximum.
* Multiple encoder versions or asset-type profiles remain possible, but the
  corpus currently contains no identical-data/conflicting-stream example that
  requires that explanation.

These are hypotheses only.  The next useful investigation would infer the
decision condition from the raw/raw and byte-RLE/byte-RLE groups before adding
another broad priority rule.

## Reproduction

From the repository root, with the matching `base.sfc` present:

```text
py -3 -m py_compile tools/konami_c.py tools/benchmark_konami_strategies.py tools/validate_konami_original.py
py -3 tools/benchmark_konami_strategies.py original original-v2 --duplicates --output docs/research/konami-strategy-benchmark-final.json
```

The machine-readable final result, including all 235 newly exact addresses, is
[`konami-strategy-benchmark-final.json`](konami-strategy-benchmark-final.json).
The benchmark performs a decompression round trip for every strategy and asset
before counting byte-identical streams; it returns a nonzero status if any
asset errors.

The baseline corpus can be regenerated separately with:

```text
py -3 tools/validate_konami_original.py --rom base.sfc --json docs/research/konami-original-validation.json --report docs/research/konami-original-validation.md
```
