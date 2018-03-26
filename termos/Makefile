# Commands
PDFLATEX       = pdflatex
VIEWER         =
PDFLATEX_FLAGS = -quiet

# Files
TEX_FILES      = $(wildcard *.tex)
PDF_FILES      = $(TEX_FILES:.tex=.pdf)

ifeq ($(OS),Windows_NT)
	VIEWER = start
else
	VIEWER = open
endif

# Rules
%.pdf: %.tex
	@echo -n "Generating PDF from $<... "
	@$(PDFLATEX) $(PDFLATEX_FLAGS) $<
	@echo "done."

all: $(PDF_FILES)

clean:
	@echo -n "Cleaning... "
	@rm -f *.{aux,bbl,blg,log,dvi,lof,lot,out,toc,fls}
	@rm -f *.{synctex.gz,fdb_latexmk,run.xml} $(PDF_FILES) *~
	@echo "done."

view: $(PDF_FILES)
	$(VIEWER) "$<"

help:
	@echo "Usage: make {pdf|clean|view|help}"
