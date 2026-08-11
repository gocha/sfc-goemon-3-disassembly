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
This bit is unused in LoROM addresses and is repurposed as a flag.

For example:

```asm
dl $B78000            ; compressed
dl $CE8000            ; uncompressed, data at $8E8000
```

As a concrete example, LoROM address `$8E8000` corresponds to ROM file offset `$070000`.
If needed, [Lunar Address JS](https://romh-acking.github.io/lunar-address-JS/) can be used to perform the conversion.

## VRAM Transfer ($00)

Each entry specifies a VRAM destination and a ROM source. VRAM addresses are word-addressed.

The transfer can contain any number of entries, followed by a `$FF` terminator.

For example:

```asm
db $00                                    ; VRAM
db $00                                    ; Transfer Mode (see below)

dw $2000                                  ; Destination: VRAM $2000
dl $968000                                ; Source: ROM $968000 (compressed)
dw $1000                                  ; Destination: VRAM $1000
dl $968AB9                                ; Source: ROM $968AB9 (compressed)

db $FF                                    ; End of transfer
```

### Transfer Mode

The VRAM transfer mode has the following bit layout:

```text
00000ffd
```

`d` specifies when the transfer is performed:

| `d` | Description                                            |
| --- | ------------------------------------------------------ |
| `0` | Immediate transfer                                     |
| `1` | Deferred transfer (DMA parameters saved for later use) |

`ff` specifies the transfer format:

| `ff` | Description                                      |
| ---- | ------------------------------------------------ |
| `00` | Normal (word transfer)                           |
| `01` | Mode 7 tilemap (byte transfer to VRAM low byte)  |
| `10` | Unused?                                          |
| `11` | Mode 7 tileset (byte transfer to VRAM high byte) |

Use `$00` for a normal, immediate transfer.

## WRAM Transfer ($01)

Each entry specifies a WRAM destination and a ROM source.

The transfer can contain any number of entries, followed by a `$FFFF` terminator.

For example:

```asm
db $01                                    ; WRAM
db $00                                    ; Transfer Mode (see below)

dl $7F0000                                ; Destination: WRAM $7F0000
dl $A1878F                                ; Source: ROM $A1878F (compressed)

dw $FFFF                                  ; End of transfer
```

This transfer may also work with other DMA-accessible memory, such as SRAM.

### Transfer Mode

The WRAM transfer mode has the following bit layout:

```text
x000000y
```

The meanings of `x` and `y` are not yet known.

## SPC Transfer ($02)

Each entry specifies an SPC destination and a ROM source.

The transfer can contain any number of entries, followed by a `$FFFF` terminator.

For example:

```asm
db $02                                    ; SPC
db $00                                    ; Unused (always 0)

dw $5300                                  ; Destination: SPC $5300
dl $CE8000                                ; Source: ROM $8E8000 (uncompressed)
dw $0200                                  ; Destination: SPC $0200
dl $B78000                                ; Source: ROM $B78000 (compressed)

dw $FFFF                                  ; End of transfer
```

For the initial transfer, the destination address of the last entry specifies the SPC driver's entry point.

## Sprite Definitions ($FF)

A sprite definition asset consists of one or more sprite definition entries, followed by a transfer block.
The `$8000` bit of the second word is used to indicate the last entry. The remaining 15 bits contain the entry value.

For example:

```asm
db $FF                                    ; Sprite

dl $BEE805                                ; Source: ROM $BEE805 (compressed)
dw $337A                                  ; Value: $337A
dl $BEF759                                ; Source: ROM $BEF759 (compressed)
dw $B4B8                                  ; Value: $34B8, last entry

db $80                                    ; NOP
```

Another example uses a VRAM transfer:

```asm
db $FF                                    ; Sprite

dl $BEE805                                ; Source: ROM $BEE805 (compressed)
dw $337A                                  ; Value: $337A
dl $BEF759                                ; Source: ROM $BEF759 (compressed)
dw $B4B8                                  ; Value: $34B8, last entry

db $00                                    ; VRAM
db $00                                    ; Transfer Mode: Normal
dw $7000                                  ; Destination: VRAM $7000
dl $B1984E                                ; Source: ROM $B1984E (compressed)
db $FF                                    ; End of transfer
```
