# vim: set noexpandtab ts=4:
#
# Authors: PA
# Maintainers:
# Copyright: 2023, HRDAG, GPL v2 or later
# ----------------------------------------------------------
# CO-examples/Resultados-CEV/Makefile

HERE := $(shell git rev-parse --show-toplevel)

.PHONY: clean all

all: \
	output/general-desaparicion-anio.html	\
	output/general-reclutamiento-sexo.html	

clean:
	rm output/*

output/general-desaparicion-anio.html: \
		src/general-desaparicion-anio.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"

output/general-reclutamiento-sexo.html: \
		src/general-reclutamiento-sexo.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"


# Done