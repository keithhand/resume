NAME=resume

all: main.pdf

main.pdf: cover.pdf resume.pdf

%.pdf: %.tex
	latexmk -pdf $<

clean:
	latexmk -c
