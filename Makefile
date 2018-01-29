all:	main

main:	main.tex
	
	pdflatex main.tex
#	gnuplot main-gnuplottex-fig*.gnuplot
#	biber main # biber main ; 
	bibtex main.aux
	pdflatex main.tex
	evince	main.pdf

paper:	paper.tex
	
	pdflatex paper.tex
#	gnuplot main-gnuplottex-fig*.gnuplot
#	bibtex main.aux
	pdflatex paper.tex
	pdflatex paper.tex
	evince	paper.pdf
clean:
	rm main.pdf
	rm *toc *aux *log 
#	rm *gnuplot*  		#for gnuplottex
	rm *.bbl *.blg 		#for bibtex

clear:
	rm *.toc *.lot *.out *.aux *.log  *.backup  *.bbl *.bak *.blg *.xml *blx.bib *.bcf *.dvi
