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
	output/secuestro-edad_c-estratificacion.html \
	output/secuestro-is_conflict-estratificacion.html \
	output/secuestro-etnia-estratificacion.html \
	output/secuestro-departamento-estratificacion.html\
	output/secuestro-macrorregion_cev-estratificacion.html\
	output/secuestro-perpetrador-estratificacion.html	\
	output/homicidio-anio-estratificacion.html	\
	output/homicidio-sexo-estratificacion.html \
	output/homicidio-edad-estratificacion.html \
	output/homicidio-etnia-estratificacion.html \
	output/homicidio-departamento-estratificacion.html \
	output/homicidio-macrorregion_cev-estratificacion.html	\
	output/homicidio-yy_hecho_is_conflict_perpetrador-estratificacion.html	\
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

output/secuestro-edad_c-estratificacion.html: \
		src/secuestro-edad_c-estratificacion.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
				mv src/secuestro-edad_c-estratificacion.html output/

output/secuestro-is_conflict-estratificacion.html: \
		src/secuestro-is_conflict-estratificacion.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
				mv src/secuestro-is_conflict-estratificacion.html output/

output/secuestro-etnia-estratificacion.html: \
		src/secuestro-etnia-estratificacion.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
				mv src/secuestro-etnia-estratificacion.html output/

output/secuestro-departamento-estratificacion.html: \
		src/secuestro-departamento-estratificacion.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
				mv src/secuestro-departamento-estratificacion.html output/

output/secuestro-macrorregion_cev-estratificacion.html: \
		src/secuestro-macrorregion_cev-estratificacion.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
				mv src/secuestro-macrorregion_cev-estratificacion.html output/

output/secuestro-perpetrador-estratificacion.html:	\
	src/secuestro-perpetrador-estratificacion.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
				mv src/secuestro-perpetrador-estratificacion.html output/

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

output/homicidio-edad-estratificacion.html: \
		src/homicidio-edad-estratificacion.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
				mv src/homicidio-edad-estratificacion.html output/

output/homicidio-etnia-estratificacion.html: \
		src/homicidio-etnia-estratificacion.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
				mv src/homicidio-etnia-estratificacion.html output/

output/homicidio-departamento-estratificacion.html: \
		src/homicidio-departamento-estratificacion.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
				mv src/homicidio-departamento-estratificacion.html output/

output/homicidio-macrorregion_cev-estratificacion.html: \
		src/homicidio-macrorregion_cev-estratificacion.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
				mv src/homicidio-macrorregion_cev-estratificacion.html output/

output/homicidio-yy_hecho_is_conflict_perpetrador-estratificacion.html: \
		src/homicidio-yy_hecho_is_conflict_perpetrador-estratificacion.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
				mv src/homicidio-yy_hecho_is_conflict_perpetrador-estratificacion.html output/

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