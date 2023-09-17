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
	output/homicidio-yy_hecho_is_conflict_perpetrador-estratificacion.html	\
	output/homicidio-sexo-estratificacion.html \
	output/homicidio-edad-estratificacion.html \
	output/homicidio-etnia-estratificacion.html \
	output/homicidio-departamento-estratificacion.html \
	output/homicidio-macrorregion_cev-estratificacion.html \
	output/homicidio-yy_hecho-estimacion-combinacion.html	\
	output/homicidio-sexo-estimacion-combinacion.html	\
	output/homicidio-edad-estimacion-combinacion.html	\
	output/homicidio-etnia-estimacion-combinacion.html	\
	output/homicidio-departamento-estimacion-combinacion.html	\
	output/homicidio-macrorregion_cev-estimacion-combinacion.html	\
	output/homicidio-is_conflict-estimacion-combinacion.html	\
	output/homicidio-perpetrador-estimacion-combinacion.html


clean:
	rm output/*

output/homicidio-yy_hecho_is_conflict_perpetrador-estratificacion.html: \
		src/homicidio-yy_hecho_is_conflict_perpetrador-estratificacion.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
				mv src/homicidio-yy_hecho_is_conflict_perpetrador-estratificacion.html output/

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

# Estimaciones

output/homicidio-yy_hecho-estimacion-combinacion.html: \
		src/homicidio-yy_hecho-estimacion-combinacion.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
				mv src/homicidio-yy_hecho-estimacion-combinacion.html output/

output/homicidio-sexo-estimacion-combinacion.html: \
		src/homicidio-sexo-estimacion-combinacion.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
				mv src/homicidio-sexo-estimacion-combinacion.html output/

output/homicidio-edad-estimacion-combinacion.html: \
		src/homicidio-edad-estimacion-combinacion.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
				mv src/homicidio-edad-estimacion-combinacion.html output/

output/homicidio-etnia-estimacion-combinacion.html: \
		src/homicidio-etnia-estimacion-combinacion.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
				mv src/homicidio-etnia-estimacion-combinacion.html output/

output/homicidio-departamento-estimacion-combinacion.html: \
		src/homicidio-departamento-estimacion-combinacion.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
				mv src/homicidio-departamento-estimacion-combinacion.html output/

output/homicidio-macrorregion_cev-estimacion-combinacion.html: \
		src/homicidio-macrorregion_cev-estimacion-combinacion.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
				mv src/homicidio-macrorregion_cev-estimacion-combinacion.html output/

output/homicidio-is_conflict-estimacion-combinacion.html: \
		src/homicidio-is_conflict-estimacion-combinacion.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
				mv src/homicidio-is_conflict-estimacion-combinacion.html output/

output/homicidio-perpetrador-estimacion-combinacion.html: \
		src/homicidio-perpetrador-estimacion-combinacion.Rmd
	-mkdir output
		Rscript -e "rmarkdown::render('$<')"
				mv src/homicidio-perpetrador-estimacion-combinacion.html output/

# Done