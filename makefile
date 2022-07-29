CC=lualatex
OUT=out
SRC= $(wildcard *.tex) $(wildcard */*.tex)
PDF=document.pdf
TEX=document.tex
SUP=--no-box 

.PHONY: all

all: build

# No source-based as I want to control recompilations
build:
	@$(CC) -output-directory $(OUT) $(TEX) < /dev/null | texlogfilter $(SUP)
	@cp $(OUT)/$(PDF) . 2>/dev/null || true;

pdflatex:
	@$(CC) -output-directory $(OUT) $(TEX)
	@cp $(OUT)/$(PDF) . 2>/dev/null || true;

clean:
	rm -rf $(OUT)/*
	rm -rf $(PDF)

