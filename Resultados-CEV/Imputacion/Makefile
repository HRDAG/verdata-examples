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
	output/reclutamiento-anio-imputados.html	\
	output/secuestro-anio-imputados.html	\
	output/homicidio-anio-imputados.html

clean:
	rm output/*

output/homicidio-anio-imputados.html: \
		src/homicidio-anio-imputados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"

output/reclutamiento-anio-imputados.html: \
		src/reclutamiento-anio-imputados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"

output/secuestro-anio-imputados.html: \
		src/secuestro-anio-imputados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"

# Done