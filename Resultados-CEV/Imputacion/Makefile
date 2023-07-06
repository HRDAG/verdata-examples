# vim: set noexpandtab ts=4:
#
# Authors: PA
# Maintainers:
# Copyright: 2023, HRDAG, GPL v2 or later
# ----------------------------------------------------------
# CO-examples/Resultados-CEV/Imputación/Makefile

HERE := $(shell git rev-parse --show-toplevel)

.PHONY: clean all

all: \
	output/reclutamiento-anio-imputados.html	\
	output/reclutamiento-is_conflict-imputados.html \
	output/desaparicion-sexo-imputados.html \
	output/desaparicion-is_conflict-imputados.html \
	output/secuestro-anio-imputados.html	\
	output/secuestro-sexo-imputados.html	\
	output/secuestro-is_conflict-imputados.html \
	output/homicidio-anio-imputados.html \
	output/homicidio-sexo-imputados.html \
	output/homicidio-is_conflict-imputados.html \


clean:
	rm output/*

output/homicidio-anio-imputados.html: \
		src/homicidio-anio-imputados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"

output/homicidio-sexo-imputados.html: \
		src/homicidio-sexo-imputados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"

output/homicidio-is_conflict-imputados.html: \
		src/homicidio-is_conflict-imputados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"

output/reclutamiento-anio-imputados.html: \
		src/reclutamiento-anio-imputados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"

output/reclutamiento-is_conflict-imputados.html: \
		src/reclutamiento-is_conflict-imputados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"

output/secuestro-anio-imputados.html: \
		src/secuestro-anio-imputados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"

output/secuestro-sexo-imputados.html: \
		src/secuestro-sexo-imputados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"

output/secuestro-is_conflict-imputados.html: \
		src/secuestro-is_conflict-imputados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"

output/desaparicion-sexo-imputados.html: \
		src/desaparicion-sexo-imputados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"

output/desaparicion-is_conflict-imputados.html: \
		src/desaparicion-is_conflict-imputados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"

# Done