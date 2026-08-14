# Japanese text reader

from pathlib import Path

ROM_PATH = Path("base.sfc")

CHAR_MAP = {
    # 判明した文字コードを追加していく
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

    0x69: "エ",
    0x6A: "モ",
    0x6B: "ン",
    0x6C: "ヒ",
    0x6D: "ス",
    0x6E: "サ",
    0x6F: "ケ",
    0x70: "ヤ",
    # 0x71 金?

    0x74: "両",
    0x75: "丸",
    0x76: "ー",

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

UNKNOWN = "?"

# 候補として表示する最低既知文字数
MIN_KNOWN_CHARS = 3

# 既知文字の途中に許容する未知バイト数
MAX_UNKNOWN_RUN = 2

# スキャン対象
BANKS = [
    0xB6,
    0xBD,
]


def format_text(data):
    return "".join(
        CHAR_MAP.get(value, UNKNOWN)
        for value in data
    )


def find_candidate_regions(data):
    """
    既知文字を含む候補領域を探す。

    未知バイトも MAX_UNKNOWN_RUN 個までは、
    同じ候補領域として扱う。
    """

    candidates = []

    start = None
    known_count = 0
    unknown_count = 0

    for i, value in enumerate(data):

        if value in CHAR_MAP:

            if start is None:
                start = i
                known_count = 0
                unknown_count = 0

            known_count += 1
            unknown_count = 0

        elif start is not None:

            unknown_count += 1

            if unknown_count > MAX_UNKNOWN_RUN:

                # 未知バイト列の直前までを候補とする
                end = i - unknown_count + 1

                if known_count >= MIN_KNOWN_CHARS:
                    candidates.append((start, end))

                start = None
                known_count = 0
                unknown_count = 0

    # バンク末尾まで候補が続いていた場合
    if start is not None and known_count >= MIN_KNOWN_CHARS:
        candidates.append((start, len(data)))

    return candidates


def scan_bank(rom, bank):

    # LoROM の PC offset
    bank_offset = (bank & 0x7F) * 0x8000

    # $xx:8000-$xx:FFFF
    data = rom[bank_offset:bank_offset + 0x8000]

    print()
    print(f"===== BANK ${bank:02X} =====")

    for start, end in find_candidate_regions(data):

        address = (bank << 16) | (0x8000 + start)

        raw = data[start:end]
        text = format_text(raw)

        print(
            f"${address:06X}  "
            f"{text:<300}  "
            f"[{raw.hex(' ')}]"
        )


def main():

    rom = ROM_PATH.read_bytes()

    for bank in BANKS:
        scan_bank(rom, bank)


if __name__ == "__main__":
    main()
