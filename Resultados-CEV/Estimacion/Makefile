# vim: set noexpandtab ts=4:
#
# Authors: PA
# Maintainers:
# Copyright: 2023, HRDAG, GPL v2 or later
# ----------------------------------------------------------
# CO-examples/Resultados-CEV/Estimacion/Makefile

HERE := $(shell git rev-parse --show-toplevel)

.PHONY: clean all

all: \
	output/reclutamiento-anio-estratificacion.html	\
	output/secuestro-anio_sexo-estratificacion.html	\
	output/homicidio-anio-estratificacion.html	\
	output/homicidio-sexo-estratificacion.html \
	output/desaparicion-sexo-estratificacion.html \
	output/desaparicion-edad_c-estratificacion.html	\
	output/desaparicion-etnia-estratificacion.html	\
	output/desaparicion-departamento-estratificacion.html	\
	output/desaparicion-macrorregion_cev-estratificacion.html \
	output/desaparicion-perpetrador-estratificacion.html
	
clean:
	rm output/*

output/reclutamiento-anio-estratificacion.html: \
		src/reclutamiento-anio-estratificacion.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
				mv src/reclutamiento-anio-estratificacion.html output/

output/secuestro-anio_sexo-estratificacion.html: \
		src/secuestro-anio_sexo-estratificacion.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
				mv src/secuestro-anio_sexo-estratificacion.html output/

output/homicidio-anio-estratificacion.html: \
		src/homicidio-anio-estratificacion.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
				mv src/homicidio-anio-estratificacion.html output/

output/homicidio-sexo-estratificacion.html: \
		src/homicidio-sexo-estratificacion.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
				mv src/homicidio-sexo-estratificacion.html output/

output/desaparicion-sexo-estratificacion.html: \
		src/desaparicion-sexo-estratificacion.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
				mv src/desaparicion-sexo-estratificacion.html output/

output/desaparicion-edad_c-estratificacion.html: \
		src/desaparicion-edad_c-estratificacion.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
				mv src/desaparicion-edad_c-estratificacion.html output/

output/desaparicion-etnia-estratificacion.html: \
		src/desaparicion-etnia-estratificacion.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
				mv src/desaparicion-etnia-estratificacion.html output/

output/desaparicion-departamento-estratificacion.html: \
		src/desaparicion-departamento-estratificacion.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
				mv src/desaparicion-departamento-estratificacion.html output/

output/desaparicion-macrorregion_cev-estratificacion.html: \
		src/desaparicion-macrorregion_cev-estratificacion.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
				mv src/desaparicion-macrorregion_cev-estratificacion.html output/

output/desaparicion-perpetrador-estratificacion.html: \
		src/desaparicion-perpetrador-estratificacion.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
				mv src/desaparicion-perpetrador-estratificacion.html output/
# Done