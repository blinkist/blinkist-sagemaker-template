#!/usr/bin/env bash

### Bash Helpers ###
bold=$(tput bold)
normal=$(tput sgr0)


### Lint notebooks in src ###
for notebook in src/*.ipynb
do
	echo "${bold}Flake8 Linter:${normal} ${notebook}"
	poetry run nbqa flake8 $notebook --ignore=E402
done


### Format all Python files in src ###
for file in src/*.py
do
	echo "${bold}Flake8 Linter:${normal} ${file}"
	poetry run flake8 $file --ignore=E402
done
