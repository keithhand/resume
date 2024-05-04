NAME=resume

all: main.pdf
main.pdf: cover.pdf resume.pdf
*.pdf: info/*.tex $(wildcard private/*.tex)

%.pdf: %.tex
	latexmk -pdf -jobname=./out/$(basename $@) $< && \
		latexmk -c -jobname=./out/$(basename $@) $<
