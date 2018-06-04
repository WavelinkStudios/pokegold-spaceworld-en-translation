BUILD := build

MD5 := md5sum -c
PYTHON := python
PYTHON3 := python3

RGBASM := rgbasm
RGBGFX := rgbgfx
RGBLINK := rgblink
RGBFIX := rgbfix
sort_sym := tools/sort_symfile.sh
#sort_sym := $(PYTHON3) tools/sort_sym.py

RGBASMFLAGS := -h -E -i $(BUILD)/ -DGOLD -DDEBUG=1
tools/gfx :=

ROM := pokegold-spaceworld.gb
BASEROM := baserom.gb
SHIM := shim.sym
CORRECTEDROM := $(ROM:%.gb=%-correctheader.gb)

rwildcard = $(foreach d, $(wildcard $1*), $(filter $(subst *, %, $2), $d) $(call rwildcard, $d/, $2))
DIRS := home engine data audio
OBJS := $(addprefix $(BUILD)/, gfx.o sram.o wram.o hram.o shim.o)
OBJS += $(patsubst %.asm, $(BUILD)/%.o, $(call rwildcard, $(DIRS), *.asm))

GFX := $(patsubst %.png, $(BUILD)/%.2bpp, \
       $(patsubst %.1bpp.png, $(BUILD)/%.1bpp, \
       $(patsubst gfx/pokemon/%/front.png, $(BUILD)/gfx/pokemon/%/front.pic, \
       $(patsubst gfx/pokemon/%/back.png, $(BUILD)/gfx/pokemon/%/back.pic, \
       $(patsubst gfx/trainer/%.png, $(BUILD)/gfx/trainer/%.pic, \
       $(call rwildcard, gfx, *.png))))))

.SECONDEXPANSION:

.PHONY: all
all: $(ROM) $(CORRECTEDROM) compare

.PHONY: compare
compare: $(ROM) $(CORRECTEDROM)
	$(MD5) roms.md5

.PHONY: tools
tools tools/pkmncompress tools/gfx:
	"$(MAKE)" -C tools/

.PHONY: coverage
coverage: tools/disasm_coverage.py $(ROM)
	$(PYTHON) $< -m $(ROM:.gb=.map) -b 0x40

# Remove files generated by the build process.
.PHONY: clean
clean:
	rm -rf $(ROM) $(CORRECTEDROM) $(BUILD) $(ROMS:.gb=.sym) $(ROMS:.gb=.map)
	"$(MAKE)" -C tools clean

# Remove files except for graphics.
.PHONY: mostlyclean
mostlyclean:
	rm -rf $(ROM) $(CORRECTEDROM) $(OBJS) $(OBJS:.o=.d) $(ROMS:.gb=.sym) $(ROMS:.gb=.map)

.PHONY: linkerscript
linkerscript: $(ROM:.gb=.link)

%.link: %.map
	$(PYTHON3) tools/map2link.py $< $@

%.map: %.gb;

$(CORRECTEDROM): %-correctheader.gb: %.gb
	cp $< $@
	$(RGBFIX) -f hg -m 0x10 $@

$(ROM): poke%-spaceworld.gb: $(OBJS) | $(BASEROM)
	$(RGBLINK) -d -n $(@:.gb=.sym) -m $(@:.gb=.map) -O $(BASEROM) -o $@ $^
	$(RGBFIX) -f lh -k 01 -l 0x33 -m 0x03 -p 0 -r 3 -t "POKEMON2$(shell echo $* | cut -d _ -f 1 | tr '[:lower:]' '[:upper:]')" $@
	$(sort_sym) $(@:.gb=.sym)

$(BASEROM):
	@echo "Please obtain a copy of Gold_debug.sgb and put it in this directory as $@"
	@exit 1

$(BUILD)/shim.asm: tools/make_shim $(SHIM) | $$(dir $$@)
	tools/make_shim -w $(filter-out $<, $^) > $@

$(BUILD)/gfx.o: | $(GFX)
$(BUILD)/%.o: $(BUILD)/%.asm | $$(dir $$@)
	$(RGBASM) $(RGBASMFLAGS) -M $(@:.o=.d) $(OUTPUT_OPTION) $<
$(BUILD)/%.o: %.asm | $$(dir $$@)
	$(RGBASM) $(RGBASMFLAGS) -M $(@:.o=.d) $(OUTPUT_OPTION) $<

$(BUILD)/gfx/sgb/sgb_border_alt.2bpp: tools/gfx += --trim-whitespace
$(BUILD)/gfx/sgb/sgb_border_gold.2bpp: tools/gfx += --trim-whitespace
$(BUILD)/gfx/sgb/sgb_border_silver.2bpp: tools/gfx += --trim-whitespace
$(BUILD)/gfx/title/title_gold.2bpp: tools/gfx += --trim-whitespace
$(BUILD)/gfx/title/title_silver.2bpp: tools/gfx += --trim-whitespace
$(BUILD)/gfx/trainer_card/leaders.2bpp: tools/gfx += --trim-whitespace
$(BUILD)/gfx/trainer_card/trainer_card.2bpp: tools/gfx += --trim-whitespace
$(BUILD)/gfx/pokegear/town_map.2bpp: tools/gfx += --trim-trailing
$(BUILD)/gfx/minigames/slots.2bpp: tools/gfx += --trim-whitespace
$(BUILD)/gfx/minigames/poker.2bpp: tools/gfx += --trim-whitespace
$(BUILD)/gfx/intro/purin_pikachu.2bpp: tools/gfx += --trim-whitespace

.PRECIOUS: $(BUILD)/%.pic
$(BUILD)/%.pic: $(BUILD)/%.2bpp tools/pkmncompress | $$(dir $$@)
	tools/pkmncompress $< $@

.PRECIOUS: $(BUILD)/%.2bpp
$(BUILD)/%.2bpp: %.png tools/gfx | $$(dir $$@)
	$(RGBGFX) $(OUTPUT_OPTION) $<
	tools/gfx $(tools/gfx) $(OUTPUT_OPTION) $@

.PRECIOUS: $(BUILD)/%.1bpp
$(BUILD)/%.1bpp: %.1bpp.png tools/gfx | $$(dir $$@)
	$(RGBGFX) -d1 $(OUTPUT_OPTION) $<
	tools/gfx $(tools/gfx) -d1 $(OUTPUT_OPTION) $@

.PRECIOUS: $(BUILD)/%.tilemap
$(BUILD)/%.tilemap: %.png | $$(dir $$@)
	$(RGBGFX) -t $@ $<

.PRECIOUS: %/
%/:
	mkdir -p $@

-include $(OBJS:.o=.d)
