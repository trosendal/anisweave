all:paper.pdf

plot100.png: plot.r
	Rscript plot.r

paper.pdf: plot100.png
	texify --pdf --max-iterations=50 paper.tex
	make sweep
sweep:
	rm -f *.png
	rm -f *.aux
	rm -f *.bbl
	rm -f *.log
	rm -f *.aux
	rm -f *.blg

clean:sweep
	rm -f *.pdf
