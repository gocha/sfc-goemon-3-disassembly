# Text Format

Text in Ganbare Goemon 3 is stored as a byte stream containing character codes and commands used to compress text.

This document describes the structure of these text streams.

## Text Data Offset

A 16-bit offset is used to reference text data. The offset corresponds to the following ROM address ranges:

| Offset        | ROM Address       |
| ------------- | ----------------- |
| 0x0000-0x7FFF | `$B68000-$B6FFFF` |
| 0x8000-0xFFFF | `$BD8000-$BDFFFF` |

The corresponding ROM address can be calculated as follows:

```python
if offset < 0x8000:
    address = 0xB68000 + offset
else:
    address = 0xBD0000 + offset
```

## Character Codes (0x00-0xBF)

The character mapping is defined by the following table. (WIP)

|          | +0 | +1 | +2 | +3 | +4 | +5 | +6  | +7  | +8 | +9 | +A | +B | +C | +D | +E | +F |
| -------- |:--:|:--:|:--:|:--:|:--:|:--:|:---:|:---:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|
| **0x00** |    |    |    |    | LF |    |     |     |    |    |    |    |    |    |    |    |
| **0x10** |    |    |    |    |    |    | ROF | RON | SP |    | あ | い | う | え | お | か |
| **0x20** | き | く | け | こ | さ | し | す  | せ  | そ | た | ち | つ | て | と | な | に |
| **0x30** | ぬ | ね | の | は | ひ | ふ | へ  | ほ  | ま | み | む | め | も | や | ゆ | よ |
| **0x40** | ら | り | る | れ | ろ | わ | を  | ん  | っ | ゃ | ゅ | ょ | ぉ | 重 | 禄 | 兵 |
| **0x50** | 衛 |    | ◀  | ▶  | ▲ | ▼ |     |     | ０ | １ | ２ | ３ | ４ | ５ | ６ | ７ |
| **0x60** | ８ | ９ |    |    |    |    |     |     |    | エ | モ | ン | ヒ | ス | サ | ケ |
| **0x70** | ヤ |    |    |    | 両 | 丸 | ー  |     | ・ | ？ | ！ | 「 | 」 |    |    |    |
| **0x80** |    | 。 | （ | ） |    |    |     |     | が | ぎ | ぐ | げ | ご | ざ | じ | ず |
| **0x90** | ぜ | ぞ | だ | ぢ | づ | で | ど  | ば  | び | ぶ | べ | ぼ | ゴ | ズ | ザ | ゲ |
| **0xA0** |    |    |    |    |    |    |     |     | ぱ | ぴ | ぷ | ぺ | ぽ | ピ |    |    |
| **0xB0** |    |    |    |    |    |    |     |     |    |    |    |    |    |    |    |    |

### Special Characters

| Code | Description           |
| ---- | --------------------- |
| 0x04 | Line feed (`\n`)      |
| 0x16 | Switch to normal text |
| 0x17 | Switch to red text    |
| 0x18 | Space                 |

## Text Stream Commands

Each byte in a text stream is interpreted according to its value.
For commands that produce multiple characters, the output length is determined by the command byte.

The byte ranges and their meanings are summarized below.

| Range     | Command          | Extra Bytes | Output Length      |
| --------- | ---------------- | ----------: | -----------------: |
| 0x00-0xBF | Character        |           0 |                  1 |
| 0xC0-0xCF | Repeat Space     |           0 |               2-17 |
| 0xD0-0xDF | Predefined Text  |           0 | varies (see below) |
| 0xE0-0xEF | Repeat Character |           1 |               3-18 |
| 0xF0-0xFF | Copy from Offset |           2 |               4-19 |

### Predefined Text (0xD0-0xDF)

The following table lists the predefined text sequences.

| Code | ROM Address | Output Text    | Bytes               |
| ---- | ----------- | -------------- | ------------------- |
| 0xD0 | `$BD8000`   | `した。」\n`   | `25 29 81 7C 04`    |
| 0xD1 | `$BD8006`   | `！」\n`       | `7A 7C 04`          |
| 0xD2 | `$BD800A`   | `。」\n`       | `81 7C 04`          |
| 0xD3 | `$BD800E`   | `」\n`         | `7C 04`             |
| 0xD4 | `$BD8011`   | `ゴエモン　「` | `9C 69 6A 6B 18 7B` |
| 0xD5 | `$BD8018`   | `エビス丸　「` | `69 9D 6D 75 18 7B` |
| 0xD6 | `$BD801F`   | `サスケ　　「` | `6E 6D 6F 18 18 7B` |
| 0xD7 | `$BD8026`   | `ヤエ　　　「` | `70 69 18 18 18 7B` |
| 0xD8 | `$BD802D`   | `・・・`       | `78 78 78`          |
| 0xD9 | `$BD8031`   | 6 spaces       | `18 18 18 18 18 18` |
| 0xDA | `$BD8038`   | 5 spaces       | `18 18 18 18 18`    |
| 0xDB | `$BD803E`   | 4 spaces       | `18 18 18 18`       |
| 0xDC | `$BD8043`   | 3 spaces       | `18 18 18`          |
| 0xDD | `$BD8047`   | 2 spaces       | `18 18`             |
| 0xDE | `$BD804A`   | `はん`         | `33 47`             |
| 0xDF | `$BD804D`   | `ござる`       | `8C 8D 42`          |

A table of offsets for these predefined text sequences is located at `$818B3D`.
Each text is terminated by 0x00.

### Copy from Offset (0xF0-0xFF)

The command is followed by a two-byte text offset.
The referenced text is copied to the output.

For example:

```
F2 5A 95
```

This command copies 6 characters from the text at offset `0x955A`,
which corresponds to ROM address `$BD955A`.
