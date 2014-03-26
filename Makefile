all:paper.pdf

plot100.png: plot.r
	Rscript plot.r

paper.tex: plot100.png paper2.Rnw
	Rscript -e "Sweave('paper2.Rnw')"

paper.pdf: paper.tex
	Rscript -e "tools::texi2pdf('paper.tex')"

sweep:
	rm -f *.png
	rm -f *.tex
	rm -f *.aux
	rm -f *.bbl
	rm -f *.log
	rm -f *.aux
	rm -f *.blg

clean:sweep
	rm -f *.pdf