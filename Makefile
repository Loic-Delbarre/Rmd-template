
RMDFILE=$(wildcard *.rmd)
PYSRC=$(wildcard *.py)
#IMGDIR=img/


#todo
#for every *.py , run a python file.py if and only
#if the img/file.eps is not uptodate

#IMGFILE=$(PYSRC:%.py=img/%.eps)

#$(IMGFILE):$(PYSRC)
#	echo "$(IMGFILE)"
#	python "$<"
#	echo "$< $@"





#conversion svg->png
# convert -background none -size 1024x1024 infile.svg outfile.png

all: $(IMGFILE) document.pdf

document.pdf: $(PYSRC) $(RMDFILE)
	echo "R"
#	Rscript -e "rmarkdown::render('document.rmd','pdf_document')"