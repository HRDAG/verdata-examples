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
	output/reclutamiento-perpetrador-documentados.html \
	output/reclutamiento-departamento-documentados.html \
	output/desaparicion-sexo-documentados.html \
	output/desaparicion-is_conflict-documentados.html \
	output/desaparicion-perpetrador-documentados.html \
	output/desaparicion-departamento-documentados.html \
	output/secuestro-anio-documentados.html	\
	output/secuestro-sexo-documentados.html	\
	output/secuestro-is_conflict-documentados.html \
	output/secuestro-perpetrador-documentados.html \
	output/secuestro-departamento-documentados.html \
	output/homicidio-anio-documentados.html \
	output/homicidio-sexo-documentados.html \
	output/homicidio-is_conflict-documentados.html \
	output/homicidio-departamento-documentados.html \

clean:
	rm output/*

output/homicidio-anio-documentados.html: \
		src/homicidio-anio-documentados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
		mv src/homicidio-anio-documentados.html output/


output/homicidio-sexo-documentados.html: \
		src/homicidio-sexo-documentados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
		mv src/homicidio-sexo-documentados.html output/

output/homicidio-is_conflict-documentados.html: \
		src/homicidio-is_conflict-documentados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
		mv src/homicidio-is_conflict-documentados.html output/

output/homicidio-perpetrador-documentados.html: \
		src/homicidio-perpetrador-documentados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
		mv src/homicidio-perpetrador-documentados.html output/

output/homicidio-departamento-documentados.html: \
		src/homicidio-departamento-documentados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
		mv src/homicidio-departamento-documentados.html output/


output/reclutamiento-anio-documentados.html: \
		src/reclutamiento-anio-documentados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
		mv src/reclutamiento-anio-documentados.html output/

output/reclutamiento-is_conflict-documentados.html: \
		src/reclutamiento-is_conflict-documentados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
		mv src/reclutamiento-is_conflict-documentados.html output/

output/reclutamiento-perpetrador-documentados.html: \
		src/reclutamiento-perpetrador-documentados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
		mv src/reclutamiento-perpetrador-documentados.html output/

output/reclutamiento-departamento-documentados.html: \
		src/reclutamiento-departamento-documentados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
		mv src/reclutamiento-departamento-documentados.html output/

output/secuestro-anio-documentados.html: \
		src/secuestro-anio-documentados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
		mv src/secuestro-anio-documentados.html output/

output/secuestro-sexo-documentados.html: \
		src/secuestro-sexo-documentados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
		mv src/secuestro-sexo-documentados.html output/

output/secuestro-is_conflict-documentados.html: \
		src/secuestro-is_conflict-documentados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
		mv src/secuestro-is_conflict-documentados.html output/

output/secuestro-perpetrador-documentados.html: \
		src/secuestro-perpetrador-documentados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
		mv src/secuestro-perpetrador-documentados.html output/

output/secuestro-departamento-documentados.html: \
		src/secuestro-departamento-documentados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
		mv src/secuestro-departamento-documentados.html output/

output/desaparicion-sexo-documentados.html: \
		src/desaparicion-sexo-documentados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
		mv src/desaparicion-sexo-documentados.html output/

output/desaparicion-is_conflict-documentados.html: \
		src/desaparicion-is_conflict-documentados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
		mv src/desaparicion-is_conflict-documentados.html output/

output/desaparicion-perpetrador-documentados.html: \
		src/desaparicion-perpetrador-documentados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
		mv src/desaparicion-perpetrador-documentados.html output/

output/desaparicion-departamento-documentados.html: \
		src/desaparicion-departamento-documentados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
		mv src/desaparicion-departamento-documentados.html output/

# Done