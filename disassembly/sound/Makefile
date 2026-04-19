.PHONY: all compare clean

# Compares the ROM to a checksum of the original
COMPARE ?= 0
ifeq (compare,$(MAKECMDGOALS))
  COMPARE := 1
endif

ASAR := ../../tools/asar/asar

MAKEFLAGS += --no-print-directory

# Clear the default suffixes
.SUFFIXES:
# Don't delete intermediate files
.SECONDARY:
# Delete files that weren't built properly
.DELETE_ON_ERROR:

# Default make rule
all: spc700.bin
ifeq ($(COMPARE),1)
	@sha1sum -c spc700.sha1
endif

# Pretend rules that are actually flags defer to `make all`
compare: all

DEPS=$(wildcard *.asm)

spc700.bin: $(DEPS)
	@$(ASAR) spc700.asm spc700.bin

clean:
	@rm -f spc700.bin
