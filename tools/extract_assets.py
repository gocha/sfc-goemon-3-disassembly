import argparse
import json
import os
import sys
from pathlib import Path

def parse_int(v):
    return int(v, 0) if isinstance(v, str) else v


def load_config(path):
    with open(path, "r", encoding="utf-8") as f:
        config = json.load(f)

    for a in config["assets"]:
        a["start"] = parse_int(a["start"])
        a["size"] = parse_int(a["size"])

    return config

def validate_assets(assets, rom_size):
    for a in assets:
        if "path" not in a or "start" not in a or "size" not in a:
            raise ValueError(f"missing field in asset: {a}")

        path = Path(a["path"])

        if path.is_absolute():
            raise ValueError("absolute path is not allowed")

        if ".." in path.parts:
            raise ValueError("parent traversal is not allowed")

        start = a["start"]
        size = a["size"]

        if not isinstance(start, int) or not isinstance(size, int):
            raise TypeError(f"start/size must be int: {a}")

        end = start + size

        if not (0 <= start < end <= rom_size):
            raise ValueError(f"invalid range: {a}")


def extract(rom_path, out_dir, config_path):
    with open(rom_path, "rb") as f:
        rom = f.read()

    config = load_config(config_path)
    assets = config.get("assets", [])

    validate_assets(assets, len(rom))

    for a in assets:
        path = a["path"]
        start = a["start"]
        size = a["size"]
        end = start + size
        data = rom[start:end]

        out_path = os.path.join(out_dir, path)
        os.makedirs(os.path.dirname(out_path), exist_ok=True)

        with open(out_path, "wb") as f:
            f.write(data)

        print(f"extracted: {path} ({size} bytes @ {hex(start)})")


def parse_args():
    parser = argparse.ArgumentParser(
        description="Extract assets from a ROM file."
    )

    parser.add_argument("rom", help="Path to base ROM (e.g. base.sfc)")
    parser.add_argument("out_dir", help="Output directory")
    parser.add_argument("config", help="Asset config JSON file (e.g. assets.json)")

    return parser.parse_args()


def main():
    args = parse_args()

    rom_path = args.rom
    out_dir = args.out_dir
    config_path = args.config

    if not os.path.isfile(rom_path):
        print(f"{rom_path} not found. To extract assets, place your ROM file.", file=sys.stderr)
        sys.exit(1)

    extract(rom_path, out_dir, config_path)


if __name__ == "__main__":
    main()
