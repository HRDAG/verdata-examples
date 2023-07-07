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
	output/reclutamiento-perpetrador-imputados.html \
	output/reclutamiento-departamento-imputados.html \
	output/desaparicion-sexo-imputados.html \
	output/desaparicion-is_conflict-imputados.html \
	output/desaparicion-perpetrador-imputados.html \
	output/desaparicion-departamento-imputados.html \
	output/secuestro-anio-imputados.html	\
	output/secuestro-sexo-imputados.html	\
	output/secuestro-is_conflict-imputados.html \
	output/secuestro-perpetrador-imputados.html \
	output/secuestro-departamento-imputados.html \
	output/homicidio-anio-imputados.html \
	output/homicidio-sexo-imputados.html \
	output/homicidio-is_conflict-imputados.html \
	output/homicidio-departamento-imputados.html 

clean:
	rm output/*

output/homicidio-anio-imputados.html: \
		src/homicidio-anio-imputados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
		mv src/homicidio-anio-imputados.html output/

output/homicidio-sexo-imputados.html: \
		src/homicidio-sexo-imputados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
		mv src/homicidio-sexo-imputados.html output/

output/homicidio-is_conflict-imputados.html: \
		src/homicidio-is_conflict-imputados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
		mv src/homicidio-is_conflict-imputados.html output/

output/homicidio-perpetrador-imputados.html: \
		src/homicidio-perpetrador-imputados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
		mv src/homicidio-perpetrador-imputados.html output/

output/homicidio-departamento-imputados.html: \
		src/homicidio-departamento-imputados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
		mv src/homicidio-departamento-imputados.html output/

output/reclutamiento-anio-imputados.html: \
		src/reclutamiento-anio-imputados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
		mv src/reclutamiento-anio-imputados.html output/

output/reclutamiento-is_conflict-imputados.html: \
		src/reclutamiento-is_conflict-imputados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
		mv src/reclutamiento-is_conflict-imputados.html output/

output/reclutamiento-perpetrador-imputados.html: \
		src/reclutamiento-perpetrador-imputados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
		mv src/reclutamiento-perpetrador-imputados.html output/

output/reclutamiento-departamento-imputados.html: \
		src/reclutamiento-departamento-imputados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
		mv src/reclutamiento-departamento-imputados.html output/

output/secuestro-anio-imputados.html: \
		src/secuestro-anio-imputados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
		mv src/secuestro-anio-imputados.html output/

output/secuestro-sexo-imputados.html: \
		src/secuestro-sexo-imputados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
		mv src/secuestro-sexo-imputados.html output/

output/secuestro-is_conflict-imputados.html: \
		src/secuestro-is_conflict-imputados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
		mv src/secuestro-is_conflict-imputados.html output/

output/secuestro-perpetrador-imputados.html: \
		src/secuestro-perpetrador-imputados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
		mv src/secuestro-perpetrador-imputados.html output/

output/secuestro-departamento-imputados.html: \
		src/secuestro-departamento-imputados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
		mv src/secuestro-departamento-imputados.html output/

output/desaparicion-sexo-imputados.html: \
		src/desaparicion-sexo-imputados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
		mv src/desaparicion-sexo-imputados.html output/

output/desaparicion-is_conflict-imputados.html: \
		src/desaparicion-is_conflict-imputados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
		mv src/desaparicion-is_conflict-imputados.html output/

output/desaparicion-perpetrador-imputados.html: \
		src/desaparicion-perpetrador-imputados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
		mv src/desaparicion-perpetrador-imputados.html output/

output/desaparicion-departamento-imputados.html: \
		src/desaparicion-departamento-imputados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
		mv src/desaparicion-departamento-imputados.html output/

# Done