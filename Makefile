.PHONY: all, clean

all: PA1_template.html PA1_template.md

%.md: %.Rmd
	Rscript -e "library(knitr); knit('$<', '$@')"

%.html: %.Rmd
	Rscript -e "library(knitr); knit2html('$<', '$@')"

clean:
	@rm -f PA1_template.html PA1_template.md PA1_template.log


