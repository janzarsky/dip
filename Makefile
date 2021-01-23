# makefile for compilation of the thesis
# (c) 2008 Michal Bidlo
# E-mail: bidlom AT fit vutbr cz
# Edited by: dytrych AT fit vutbr cz
#===========================================
CO=contracts_for_concurrency

all: $(CO).pdf

pdf: $(CO).pdf

$(CO).ps: $(CO).dvi
	dvips $(CO)

$(CO).pdf: clean
	pdflatex -halt-on-error $(CO)
	-bibtex $(CO)
	pdflatex -halt-on-error $(CO)
	pdflatex -halt-on-error $(CO)

$(CO).dvi: $(CO).tex $(CO).bib
	latex $(CO)
	-bibtex $(CO)
	latex $(CO)
	latex $(CO)

clean:
	rm -f *.dvi *.log $(CO).blg $(CO).bbl $(CO).toc *.aux $(CO).out $(CO).lof $(CO).ptc
	rm -f $(CO).pdf
	rm -f *~

pack:
	tar czvf $(CO).tar.gz *.tex *.bib *.bst ./template-fig/* ./bib-styles/* ./cls/* zadani.pdf $(CO).pdf Makefile Changelog

vlna:
	vlna -l $(CO)-*.tex

normostrany:
	echo "scale=2; (`detex -n $(CO)-[01]*.tex | wc -c`+860+860+570)/1800;" | bc

text:
	detex -n $(CO)-[01]*.tex | sed 's/\n\n/xxxendxxx/g' | sed 's/\n/ /g' | sed 's/xxxendxxx/\r\r/g' > $(CO).txt
