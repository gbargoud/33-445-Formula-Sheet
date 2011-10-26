# Makefile in case you use the terminal in stead of a GUI editor

pdf: formula-sheet.pdf

open: formula-sheet.pdf 
	evince formula-sheet.pdf &> /dev/null &

force:
	pdflatex formula-sheet.tex

%.pdf: %.tex 
	pdflatex $<

edit: force open
	vim formula-sheet.tex
