from pathlib import Path
import sys

WINDOW_SIZE = 0x400
DATA_SIZE = 0x10000

def check_pos(pos):
    if pos >= WINDOW_SIZE:
        pos -= WINDOW_SIZE
    return pos

def deinterleave_tile_data(data):
    if len(data) % 16 != 0:
        raise ValueError("Interleaved data size must be a multiple of 16")

    result = bytearray(len(data))

    for pos in range(0, len(data), 16):
        block = data[pos:pos + 16]

        if len(block) < 16:
            result[pos:pos + len(block)] = block
            continue

        for i in range(8):
            result[pos + i * 2] = block[i]
            result[pos + i * 2 + 1] = block[i + 8]

    return result

def konami_decompress(input_file, offset_hex, game_type, output_file):
    offset = int(offset_hex, 16)
    t = int(game_type, 16)

    in_buf = bytearray(DATA_SIZE)
    out_buf = bytearray(DATA_SIZE)
    win_buf = bytearray(WINDOW_SIZE)

    with open(input_file, 'rb') as f:
        f.seek(offset)
        oldM1 = f.read(1)[0]
        oldM2 = f.read(1)[0]
        comp_size = ((oldM2 << 8) | oldM1) & 0x7fff
        interleaved = (oldM2 & 0x80) != 0

        if comp_size > DATA_SIZE:
            raise ValueError("Compressed size too large")

        f.seek(offset + 2)
        in_buf[:comp_size-2] = f.read(comp_size-2)

    in_pos = 0
    out_pos = 0
    buf_pos = 0

    while in_pos < comp_size-2 and out_pos < DATA_SIZE:
        byte = in_buf[in_pos]
        ctrl = byte >> 5
        in_pos += 1

        if ctrl == 0x04:  # RAW (0x81-0x9F)
            cnt = byte & 0x1f
            for _ in range(cnt):
                val = in_buf[in_pos]
                in_pos += 1
                out_buf[out_pos] = val
                out_pos += 1
                win_buf[buf_pos] = val
                buf_pos = check_pos(buf_pos + 1)

        elif ctrl == 0x05:  # RLE_A0 (0xA0-0xBF)
            cnt = (byte & 0x1f) + 2
            for _ in range(cnt):
                val = in_buf[in_pos]
                in_pos += 1
                out_buf[out_pos] = 0x00
                out_pos += 1
                win_buf[buf_pos] = 0x00
                buf_pos = check_pos(buf_pos + 1)
                out_buf[out_pos] = val
                out_pos += 1
                win_buf[buf_pos] = val
                buf_pos = check_pos(buf_pos + 1)

        elif ctrl == 0x06:  # RLE_C0 (0xC0-0xDF)
            cnt = (byte & 0x1f) + 2
            val = in_buf[in_pos]
            in_pos += 1
            for _ in range(cnt):
                out_buf[out_pos] = val
                out_pos += 1
                win_buf[buf_pos] = val
                buf_pos = check_pos(buf_pos + 1)

        elif ctrl == 0x07:  # RLE_E0 (0xE0-0xFF)
            val = in_buf[in_pos-1]
            if t == 0:
                cnt = (val & 0x1f) + 2
                for _ in range(cnt):
                    out_buf[out_pos] = 0x00
                    out_pos += 1
                    win_buf[buf_pos] = 0x00
                    buf_pos = check_pos(buf_pos + 1)
            else:
                if val != 0xFF:
                    cnt = (val & 0x1f) + 2
                    for _ in range(cnt):
                        out_buf[out_pos] = 0x00
                        out_pos += 1
                        win_buf[buf_pos] = 0x00
                        buf_pos = check_pos(buf_pos + 1)
                else:
                    val = in_buf[in_pos]
                    in_pos += 1
                    cnt = (val & 0xff) + 2
                    for _ in range(cnt):
                        out_buf[out_pos] = 0x00
                        out_pos += 1
                        win_buf[buf_pos] = 0x00
                        buf_pos = check_pos(buf_pos + 1)

        else:  # LZ (0x00-0x7F)
            lz1 = byte
            lz2 = in_buf[in_pos]
            in_pos += 1
            lz_len = (lz1 >> 2) + 2
            lz_off = (((lz1 << 8) | lz2) & 0x3FF)
            lz_off = (lz_off - 0x3DF) & 0x3FF

            for _ in range(lz_len):
                val = win_buf[check_pos(lz_off)]
                out_buf[out_pos] = val
                out_pos += 1
                win_buf[buf_pos] = val
                buf_pos = check_pos(buf_pos + 1)
                lz_off = check_pos(lz_off + 1)

    if interleaved:
        out_buf = deinterleave_tile_data(out_buf)

    with open(output_file, "wb") as f:
        f.write(out_buf[:out_pos])

    print(f"Decompressed data size: {out_pos}{' (deinterleaved)' if interleaved else ''}")


if __name__ == "__main__":
    if len(sys.argv) < 4:
        print("Usage: python konami_d.py <ROM_file> <offset_hex> <game_type>")
        sys.exit(1)

    output_file = Path(sys.argv[1]).name
    if output_file.endswith(".konamiz"):
        output_file = output_file[:-len(".konamiz")]

    konami_decompress(sys.argv[1], sys.argv[2], sys.argv[3], output_file)
