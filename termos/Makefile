# Commands
PDFLATEX       = pdflatex
VIEWER         =

# Commands parameters
PDFLATEX_FLAGS = -quiet

# Variables
TEXES          = $(wildcard *.tex)
PDFS           = $(TEXES:.tex=.pdf)

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

all: $(PDFS)

clean:
	@echo -n "Cleaning... "
	@rm -f *.{aux,bbl,blg,log,dvi,lof,lot,out,toc,fls}
	@rm -f *.{synctex.gz,fdb_latexmk,run.xml} $(PDFS) *~
	@echo "done."

view: $(PDFS)
	@$(VIEWER) "$<"

help:
	@echo "Usage: make {pdf|clean|view|help}"
