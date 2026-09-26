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

## Code Style

The code style is loosely based on [yoshisisland-disassembly](https://github.com/brunovalads/yoshisisland-disassembly).
The main conventions used in this project are:

* Use `ALL_CAPS_UNDERSCORE` for constants and `all_lowercase_and_underscore_delimiting` for meaningful labels and variables.
* Use parent labels for routines and major data blocks, and `.sublabels` for local control flow. Parent labels end with a colon; sublabels do not.
* Prefix Asar variables with `!reg_` for hardware registers, `!r_` for RAM, and `!s_` for SRAM.

For example:

```asm
ROOM_COUNT = $0185

!reg_nmitimen = $4200
!r_room_id = $008E
!s_save_data = $700000

update_room:
  LDA.B !r_room_id

.loop
  ...

.ret
  RTL
```

For details not covered here, follow the surrounding code and use the reference project as guidance.

## Useful Tools

* [M1TE](https://github.com/nesdoug/M1TE2): Graphic Editor
