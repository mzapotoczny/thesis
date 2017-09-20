TEMP=temp
FILE=presentation
SRC=$(wildcard *.tex)

all: $(TEMP)/$(FILE).pdf

$(TEMP)/$(FILE).pdf: $(SRC)
	pdflatex -quiet -interaction nonstopmode -output-directory=./temp $(FILE).tex
	mv temp/presentation.pdf .

clean:
	rm temp/*
