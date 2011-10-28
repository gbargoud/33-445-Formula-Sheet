# Makefile in case you use the terminal in stead of a GUI editor

PDFVIEWER=evince
ED=vim

pdf: formula-sheet.pdf

open: formula-sheet.pdf 
	$(PDFVIEWER) formula-sheet.pdf &> /dev/null &

force:
	pdflatex formula-sheet.tex

%.pdf: %.tex 
	pdflatex $<

edit: pdf open
	$(ED) formula-sheet.tex

push: pdf
	git push -u origin master
