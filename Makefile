.PHONY: all assets compare clean

# Compares the ROM to a checksum of the original
COMPARE ?= 0
ifeq (compare,$(MAKECMDGOALS))
  COMPARE := 1
endif

ASAR := tools/asar/asar

MAKEFLAGS += --no-print-directory

# Clear the default suffixes
.SUFFIXES:
# Don't delete intermediate files
.SECONDARY:
# Delete files that weren't built properly
.DELETE_ON_ERROR:

# Default make rule
all: goemon3.sfc
ifeq ($(COMPARE),1)
	@sha1sum -c goemon3.sha1
endif

# Pretend rules that are actually flags defer to `make all`
compare: all

DEPS=$(wildcard disassembly/*.asm) \
     $(wildcard disassembly/sound/*.asm) \
     $(wildcard disassembly/vars/*.asm)

assets: assets/extracted.flag

assets/extracted.flag: assets.json
	@python tools/extract_assets.py base.sfc assets assets.json
	@touch assets/extracted.flag

goemon3.sfc: $(DEPS) assets/extracted.flag
	@$(MAKE) -C disassembly/sound $(MAKECMDGOALS)
	@$(ASAR) disassembly\main.asm goemon3.sfc

clean:
	@$(MAKE) -C disassembly/sound clean
	@rm -f goemon3.sfc
