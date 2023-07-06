# vim: set noexpandtab ts=4:
#
# Authors: PA
# Maintainers:
# Copyright: 2023, HRDAG, GPL v2 or later
# ----------------------------------------------------------
# CO-examples/Resultados-CEV/Documentados/Makefile

HERE := $(shell git rev-parse --show-toplevel)

.PHONY: clean all

all: \
	output/reclutamiento-anio-documentados.html	\
	output/reclutamiento-is_conflict-documentados.html \
	output/desaparicion-sexo-documentados.html \
	output/desaparicion-is_conflict-documentados.html \
	output/secuestro-anio-documentados.html	\
	output/secuestro-sexo-documentados.html	\
	output/secuestro-is_conflict-documentados.html \
	output/homicidio-anio-documentados.html \
	output/homicidio-sexo-documentados.html \
	output/homicidio-is_conflict-documentados.html \


clean:
	rm output/*

output/homicidio-anio-documentados.html: \
		src/homicidio-anio-documentados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"

output/homicidio-sexo-documentados.html: \
		src/homicidio-sexo-documentados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"

output/homicidio-is_conflict-documentados.html: \
		src/homicidio-is_conflict-documentados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"

output/reclutamiento-anio-documentados.html: \
		src/reclutamiento-anio-documentados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"

output/reclutamiento-is_conflict-documentados.html: \
		src/reclutamiento-is_conflict-documentados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"

output/secuestro-anio-documentados.html: \
		src/secuestro-anio-documentados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"

output/secuestro-sexo-documentados.html: \
		src/secuestro-sexo-documentados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"

output/secuestro-is_conflict-documentados.html: \
		src/secuestro-is_conflict-documentados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"

output/desaparicion-sexo-documentados.html: \
		src/desaparicion-sexo-documentados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"

output/desaparicion-is_conflict-documentados.html: \
		src/desaparicion-is_conflict-documentados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"

# Done