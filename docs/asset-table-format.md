# Asset Table Format

This document describes the asset format used by Ganbare Goemon 3.
Asset data is transferred from ROM to VRAM, WRAM, or the SPC.

## Basic Structure

The first byte of an asset specifies its type.

| Type  | Description        | Data structure                    | Typical use               |
| ----- | ------------------ | --------------------------------- | ------------------------- |
| `$00` | VRAM transfer      | Mode + entries + terminator       | Tilesets, tilemaps        |
| `$01` | WRAM transfer      | Mode + entries + terminator       | Unknown                   |
| `$02` | SPC transfer       | Mode + entries + terminator       | Sound driver, BRR samples |
| `$80` | NOP                | None                              | Dummy transfer            |
| `$FF` | Sprite definitions | Entries + optional transfer block | Sprites                   |

The format of the asset entries varies by asset type.

### Compression

Data referenced by an asset entry is normally compressed using the [Konami SNES compression format](konami-snes-compression.md).

The `$400000` bit in the source address indicates that the data is uncompressed.

For example:

```asm
dl $B78000            ; compressed
dl $CE8000            ; uncompressed, data at $8E8000
```

## VRAM Transfer ($00)

...

## WRAM Transfer ($01)

...

## SPC Transfer ($02)

...

## Sprite Definitions ($FF)

...
