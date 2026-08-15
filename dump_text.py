from pathlib import Path


ROM_PATH = Path("base.sfc")

# Scan these LoROM banks.
BANKS = [0xB6, 0xBD]

# Number of bytes examined when looking for text-like regions.
WINDOW_SIZE = 32

# Minimum number of 00-BF bytes in a window.
MIN_CHAR_CODES = 12

# Merge nearby candidate windows.
MERGE_DISTANCE = 8

# Maximum number of commands decoded from a candidate.
MAX_COMMANDS = 256


# ----------------------------------------------------------------------
# Character table
# ----------------------------------------------------------------------

CHAR_MAP = {
    0x04: "\n",
    0x16: "[normal]",
    0x17: "[red]",
    0x18: "　",

    0x1A: "あ",
    0x1B: "い",
    0x1C: "う",
    0x1D: "え",
    0x1E: "お",
    0x1F: "か",
    0x20: "き",
    0x21: "く",
    0x22: "け",
    0x23: "こ",
    0x24: "さ",
    0x25: "し",
    0x26: "す",
    0x27: "せ",
    0x28: "そ",
    0x29: "た",
    0x2A: "ち",
    0x2B: "つ",
    0x2C: "て",
    0x2D: "と",
    0x2E: "な",
    0x2F: "に",
    0x30: "ぬ",
    0x31: "ね",
    0x32: "の",
    0x33: "は",
    0x34: "ひ",
    0x35: "ふ",
    0x36: "へ",
    0x37: "ほ",
    0x38: "ま",
    0x39: "み",
    0x3A: "む",
    0x3B: "め",
    0x3C: "も",
    0x3D: "や",
    0x3E: "ゆ",
    0x3F: "よ",
    0x40: "ら",
    0x41: "り",
    0x42: "る",
    0x43: "れ",
    0x44: "ろ",
    0x45: "わ",
    0x46: "を",
    0x47: "ん",
    0x48: "っ",
    0x49: "ゃ",
    0x4A: "ゅ",
    0x4B: "ょ",
    0x4C: "ぉ",
    0x4D: "重",
    0x4E: "禄",
    0x4F: "兵",
    0x50: "衛",

    0x52: "◀",
    0x53: "▶",
    0x54: "▲",
    0x55: "▼",

    0x58: "０",
    0x59: "１",
    0x5A: "２",
    0x5B: "３",
    0x5C: "４",
    0x5D: "５",
    0x5E: "６",
    0x5F: "７",
    0x60: "８",
    0x61: "９",

    0x68: "コ",
    0x69: "エ",
    0x6A: "モ",
    0x6B: "ン",
    0x6C: "ヒ",
    0x6D: "ス",
    0x6E: "サ",
    0x6F: "ケ",
    0x70: "ヤ",

    0x74: "両",
    0x75: "丸",
    0x76: "ー",
    0x77: "金",

    0x78: "・",
    0x79: "？",
    0x7A: "！",
    0x7B: "「",
    0x7C: "」",

    0x81: "。",
    0x82: "（",
    0x83: "）",

    0x88: "が",
    0x89: "ぎ",
    0x8A: "ぐ",
    0x8B: "げ",
    0x8C: "ご",
    0x8D: "ざ",
    0x8E: "じ",
    0x8F: "ず",
    0x90: "ぜ",
    0x91: "ぞ",
    0x92: "だ",
    0x93: "ぢ",
    0x94: "づ",
    0x95: "で",
    0x96: "ど",
    0x97: "ば",
    0x98: "び",
    0x99: "ぶ",
    0x9A: "べ",
    0x9B: "ぼ",
    0x9C: "ゴ",
    0x9D: "ビ",
    0x9E: "ズ",
    0x9F: "ザ",
    0xA0: "ゲ",

    0xA8: "ぱ",
    0xA9: "ぴ",
    0xAA: "ぷ",
    0xAB: "ぺ",
    0xAC: "ぽ",
    0xAD: "ピ",
}


PREDEFINED_TEXT = {
    0xD0: "した。」\n",
    0xD1: "！」\n",
    0xD2: "。」\n",
    0xD3: "」\n",
    0xD4: "ゴエモン　「",
    0xD5: "エビス丸　「",
    0xD6: "サスケ　　「",
    0xD7: "ヤエ　　　「",
    0xD8: "・・・",
    0xD9: "　　　　　　",
    0xDA: "　　　　　",
    0xDB: "　　　　",
    0xDC: "　　　",
    0xDD: "　　",
    0xDE: "はん",
    0xDF: "ござる",
}


# ----------------------------------------------------------------------
# Address conversion
# ----------------------------------------------------------------------

def snes_to_file(address):
    """Convert a LoROM SNES address to a ROM file offset."""

    bank = (address >> 16) & 0xFF
    offset = address & 0xFFFF

    if offset < 0x8000:
        return None

    rom_bank = bank & 0x3F

    return rom_bank * 0x8000 + (offset - 0x8000)


def file_to_snes(file_offset):
    """Convert a ROM file offset to a LoROM SNES address."""

    bank = file_offset // 0x8000
    offset = file_offset % 0x8000

    return ((bank | 0x80) << 16) | (offset + 0x8000)


def offset_to_snes(offset):
    """Convert a 16-bit text offset to its SNES address."""

    offset &= 0xFFFF

    if offset < 0x8000:
        return 0xB68000 + offset

    return 0xBD0000 + offset


def read_text_byte(data, offset):
    """
    Read one byte using the game's 16-bit text offset scheme.

    The offset is interpreted as:
        0x0000-0x7FFF -> $B68000-$B6FFFF
        0x8000-0xFFFF -> $BD8000-$BDFFFF
    """

    offset &= 0xFFFF

    address = offset_to_snes(offset)
    file_offset = snes_to_file(address)

    if file_offset is None or file_offset >= len(data):
        return None

    return data[file_offset]


# ----------------------------------------------------------------------
# Candidate search
# ----------------------------------------------------------------------

def find_candidates(data, bank):
    """
    Find regions containing many 00-BF bytes.

    Returns a list of (start_file_offset, end_file_offset).
    """

    bank_start = snes_to_file(bank << 16 | 0x8000)

    candidates = []

    for pos in range(
        bank_start,
        bank_start + 0x8000 - WINDOW_SIZE + 1,
    ):
        window = data[pos:pos + WINDOW_SIZE]

        char_count = sum(byte <= 0xBF for byte in window)

        if char_count >= MIN_CHAR_CODES:
            candidates.append(pos)

    # Merge overlapping / nearby windows.
    regions = []

    for pos in candidates:

        if not regions:
            regions.append([pos, pos + WINDOW_SIZE])
            continue

        start, end = regions[-1]

        if pos <= end + MERGE_DISTANCE:
            regions[-1][1] = pos + WINDOW_SIZE
        else:
            regions.append([pos, pos + WINDOW_SIZE])

    return regions


# ----------------------------------------------------------------------
# Text decoding
# ----------------------------------------------------------------------

def decode_character(code):
    """Decode a byte as a character code."""

    return CHAR_MAP.get(code, f"<{code:02X}>")


def decode_stream(data, file_offset, max_commands=MAX_COMMANDS):
    """
    Decode a text stream beginning at a ROM file offset.

    F0-FF copies bytes from the referenced text offset.
    Copied bytes are emitted directly and are NOT interpreted
    as text stream commands.

    Unknown character codes are represented by '?'.

    Returns:
        (text, consumed_bytes)
    """

    output = []
    pos = file_offset

    for _ in range(max_commands):

        if pos >= len(data):
            break

        command = data[pos]
        pos += 1

        # Terminator.
        if command == 0x00:
            return "".join(output), pos - file_offset

        # 00-BF: character.
        if command <= 0xBF:
            output.append(decode_character(command))
            continue

        # C0-CF: repeat space.
        if command <= 0xCF:
            count = command - 0xC0 + 2
            output.append("　" * count)
            continue

        # D0-DF: predefined text.
        if command <= 0xDF:
            text = PREDEFINED_TEXT.get(command)

            if text is None:
                break

            output.append(text)
            continue

        # E0-EF: repeat following character.
        if command <= 0xEF:

            if pos >= len(data):
                break

            char_code = data[pos]
            pos += 1

            count = command - 0xE0 + 3

            output.append(
                decode_character(char_code) * count
            )

            continue

        # F0-FF: copy from offset.
        if command <= 0xFF:

            if pos + 1 >= len(data):
                break

            copy_offset = (
                data[pos]
                | (data[pos + 1] << 8)
            )
            pos += 2

            count = command - 0xF0 + 4

            copied = []

            for i in range(count):

                source_offset = (
                    copy_offset + i
                ) & 0xFFFF

                value = read_text_byte(
                    data,
                    source_offset,
                )

                if value is None or value > 0xBF:
                    # The referenced data is not a valid text sequence.
                    return "", 0

                copied.append(decode_character(value))

            output.append("".join(copied))
            continue

    return "".join(output), pos - file_offset


# ----------------------------------------------------------------------
# Dump
# ----------------------------------------------------------------------

def hexdump(data, start, length):
    values = data[start:start + length]

    return " ".join(
        f"{value:02X}"
        for value in values
    )


def dump_region(data, start, end):
    """
    Try every byte in a candidate region as a possible
    text-stream start.
    """

    used = set()

    pos = start

    while pos < end:

        if pos in used:
            pos += 1
            continue

        command = data[pos]

        # Do not start a candidate with an unknown character code.
        if command == 0x04 or (command <= 0xBF and command not in CHAR_MAP):
            pos += 1
            continue

        text, consumed = decode_stream(data, pos)

        if consumed <= 0:
            pos += 1
            continue

        raw = data[pos:pos + consumed]

        # Require some actual character codes.
        char_count = sum(
            byte <= 0xBF
            for byte in raw
        )

        if char_count < MIN_CHAR_CODES:
            pos += 1
            continue

        # Require at least some recognizable characters.
        known_count = sum(
            byte in CHAR_MAP
            for byte in raw
            if byte <= 0xBF
        )

        if known_count < 4:
            pos += 1
            continue

        address = file_to_snes(pos)

        print(f"${address:06X}")
        print(f"  {hexdump(data, pos, consumed)}")
        print(f"  {text}")
        print()

        # Avoid dumping the same stream repeatedly.
        for i in range(pos, pos + consumed):
            used.add(i)

        pos += consumed


# ----------------------------------------------------------------------
# Main
# ----------------------------------------------------------------------

def main():

    data = ROM_PATH.read_bytes()

    print(f"ROM size: ${len(data):X}")

    for bank in BANKS:

        print()
        print("=" * 72)
        print(f"Bank ${bank:02X}")
        print("=" * 72)

        regions = find_candidates(data, bank)

        print(f"Candidate regions: {len(regions)}")

        for start, end in regions:
            dump_region(data, start, end)


if __name__ == "__main__":
    main()
