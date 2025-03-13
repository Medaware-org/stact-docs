stact.pdf: stact.tex
	xelatex stact.tex

open: rm-pdf stact.pdf
	open stact.pdf

rm-pdf:
	rm -f stact.pdf

clean:
	find . -type f -name "*.log" -or -name "*.aux" | xargs rm -f
