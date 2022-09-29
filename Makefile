RDIR = .

PRACTICE_DIR = ./practice/
PRACTICE_SRC = $(wildcard $(PRACTICE_DIR)*.Rmd)
PRACTICE_OUT = $(PRACTICE_SRC:.Rmd=.html)

SLIDES_DIR = ./slides/
SLIDES_SRC = $(wildcard $(SLIDES_DIR)*.Rmd)
SLIDES_OUT = $(SLIDES_SRC:.Rmd=.html)

all: slides practice
	echo All files are now up to date

slides: $(SLIDES_OUT)
	echo All files are now up to date

practice: $(PRACTICE_OUT)
	echo All files are now up to date

clean:
	rm -f $(PRACTICE_OUT) $(SLIDES_OUT)

$(PRACTICE_DIR)%.html:$(PRACTICE_DIR)%.Rmd
	Rscript -e 'rmarkdown::render("$<")'

$(SLIDES_DIR)%.html:$(SLIDES_DIR)%.Rmd
	Rscript -e 'rmarkdown::render("$<")'

