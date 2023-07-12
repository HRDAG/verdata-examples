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
	output/desaparicion-sexo-estratificacion

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
# Done