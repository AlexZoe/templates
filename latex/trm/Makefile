TIME_STAMP := $(shell date +%F)
OPTIONS := -interactions=nonstopmode -halt-on-error

TARGET := trm

.DEFAULT_GOAL := pdf

pdf:
	pdflatex $(OPTIONS) $(TARGET).tex
	pdflatex $(OPTIONS) $(TARGET).tex

clean:
	@rm -rf *.pdf *.xml *.bbl *.aux *.bcf *.log *.blg *.gz *.out *.toc
	@rm -rf sections/*.aux
