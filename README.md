# Ganbare Goemon 3: Shishi Juurokubee no Karakuri Manjigatame (SFC) Disassembly

This is a work-in-progress disassembly of Ganbare Goemon 3. It aims to document and preserve the structure of the original program.

This project builds the following ROM:

* [**goemon3.sfc**](https://datomatic.no-intro.org/index.php?page=show_record&s=49&n=0911) `sha1: 24832a8a054a83bbca241f8daf8b39ed2932996f`
* ~~[**goemon3_rev1.sfc**](https://datomatic.no-intro.org/index.php?page=show_record&s=49&n=3660) `sha1: bd17d17dbd31002e73b307b15fd498116d9117a9`~~ **(Not yet supported)**
* ~~[**goemon3_rev2.sfc**](https://datomatic.no-intro.org/index.php?page=show_record&s=49&n=3574) `sha1: 2732b810694880f9a388657ffb4cfb79d7d3ea7c`~~ **(Not yet supported)**

This project requires a copy of the original, unmodified v1.0 ROM.

## How to Build

### Dependencies

* [Asar](https://github.com/RPGHacker/asar) v1.91
* GNU Make and Coreutils
* Python 3

### Setup

1. Place `base.sfc` (an unmodified v1.0 ROM) in the project root directory.
2. Place the `asar` executable in `tools/asar` if it is not already present.
3. Install GNU Make, GNU Coreutils, and Python.

You can use [MSYS2](https://www.msys2.org/) on Windows. After installation, install the required packages with: `pacman -S make python`

### Build

* Run `make clean` if needed.
* Run `make` to build the ROM, or `make compare` to build and verify its SHA1 hash.

## Format

The code style is based on [yoshisisland-disassembly](https://github.com/brunovalads/yoshisisland-disassembly).
