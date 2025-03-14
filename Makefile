stact.pdf: stact.tex
	xelatex stact.tex

.PHONY: open
open: rm-pdf stact.pdf
	open stact.pdf

.PHONY: rm-pdf
rm-pdf:
	rm -f stact.pdf

.PHONY: clean
clean:
	find . -type f -name "*.log" -or -name "*.aux" | xargs rm -f
