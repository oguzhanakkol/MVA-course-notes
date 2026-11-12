# Local build: Tectonic (self-contained TeX engine) + rsvg-convert for SVG figures.
#   make                          compile every course -> <course>/<course>.pdf
#   make COURSES=subpixel-image-processing etc.   compile only the specified courses
#   make clean                    remove build artefacts (PDFs are kept)
# Requirements (Homebrew): tectonic, librsvg
COURSES ?= $(patsubst %/main.tex,%,$(wildcard */main.tex))

.PHONY: all clean $(COURSES)
all: $(COURSES)

$(COURSES):
	@mkdir -p $@/build/svg
	@cd $@ && for f in $$(find figures -name '*.svg' 2>/dev/null); do \
	  out=build/svg/$${f%.svg}.pdf; mkdir -p $$(dirname $$out); \
	  if [ ! -f $$out ] || [ $$f -nt $$out ]; then rsvg-convert -f pdf -o $$out $$f; fi; \
	done
	cd $@ && tectonic -X compile main.tex --outdir build -Z search-path=../tools/texinputs
	cp $@/build/main.pdf $@/$@.pdf

clean:
	rm -rf */build
