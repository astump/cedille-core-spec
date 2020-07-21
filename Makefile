all: spec.pdf spec-arxiv.pdf

spec.pdf:	spec.tex main.tex biblio.bib
	rm -f spec.aux
	pdflatex spec.tex
	bibtex spec
	pdflatex spec.tex
	pdflatex spec.tex

spec-arxiv.pdf:	spec-arxiv.tex main.tex biblio.bib
	rm -f spec-arxiv.aux
	pdflatex spec-arxiv.tex
	pdflatex spec-arxiv.tex

