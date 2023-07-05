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
	output/reclutamiento-anio-documentados.html	\
	output/reclutamiento-anio-imputados.html	\
	output/reclutamiento-anio-estratificacion.html	\
	output/reclutamiento-anio-estimacion.html	\
	output/secuestro-anio-documentados.html	\
	output/secuestro-anio-imputados.html	\
	output/secuestro-anio-estratificacion.html	\
	output/secuestro-anio-estimacion.html \
	output/homicidio-anio-documentados.html	\
	output/homicidio-anio-imputados.html	\
	output/homicidio-anio-estratificacion.html	\
	output/homicidio-anio-estimacion.html	

clean:
	rm output/*

output/homicidio-anio-documentados.html: \
		src/homicidio-anio-documentados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
			mv src/homicidio-anio-documentados.html output/

output/homicidio-anio-imputados.html: \
		src/homicidio-anio-imputados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
			mv src/homicidio-anio-imputados.html output/

output/homicidio-anio-estratificacion.html: \
		src/homicidio-anio-estratificacion.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
			mv src/homicidio-anio-estratificacion.html output/

output/homicidio-anio-estimacion.html: \
		src/homicidio-anio-estimacion.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
			mv src/homicidio-anio-estimacion.html output/

output/reclutamiento-anio-documentados.html: \
		src/reclutamiento-anio-documentados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
			mv src/reclutamiento-anio-documentados.html output/

output/reclutamiento-anio-imputados.html: \
		src/reclutamiento-anio-imputados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
			mv src/reclutamiento-anio-imputados.html output/

output/reclutamiento-anio-estratificacion.html: \
		src/reclutamiento-anio-estratificacion.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
			mv src/reclutamiento-anio-estratificacion.html output/

output/reclutamiento-anio-estimacion.html: \
		src/reclutamiento-anio-estimacion.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
			mv src/reclutamiento-anio-estimacion.html output/

output/secuestro-anio-documentados.html: \
		src/secuestro-anio-documentados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
			mv src/secuestro-anio-documentados.html output/

output/secuestro-anio-imputados.html: \
		src/secuestro-anio-imputados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
			mv src/secuestro-anio-imputados.html output/

output/secuestro-anio-estratificacion.html: \
		src/secuestro-anio-estratificacion.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
			mv src/secuestro-anio-estratificacion.html output/

output/secuestro-anio-estimacion.html: \
		src/secuestro-anio-estimacion.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
			mv src/secuestro-anio-estimacion.html output/

# Done