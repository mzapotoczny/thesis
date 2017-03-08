TEMP=output
FILE=thesis
SRC=$(wildcard *.tex)

all: paper

.PHONY: paper

paper: $(SRC)
	-pdflatex -interaction nonstopmode -output-directory=./$(TEMP) $(FILE).tex
	-bibtex $(TEMP)/$(FILE).aux
	-pdflatex -interaction nonstopmode -output-directory=./$(TEMP) $(FILE).tex
	pdflatex -output-directory=./$(TEMP) $(FILE).tex
	mv $(TEMP)/$(FILE).pdf .

clean:
	rm $(TEMP)/*
