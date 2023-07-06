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
	output/secuestro-anio-documentados.html	\
	output/homicidio-anio-documentados.html

clean:
	rm output/*

output/homicidio-anio-documentados.html: \
		src/homicidio-anio-documentados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
			mv src/homicidio-anio-documentados.html output/

output/reclutamiento-anio-documentados.html: \
		src/reclutamiento-anio-documentados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
			mv src/reclutamiento-anio-documentados.html output/

output/secuestro-anio-documentados.html: \
		src/secuestro-anio-documentados.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
			mv src/secuestro-anio-documentados.html output/

# Done