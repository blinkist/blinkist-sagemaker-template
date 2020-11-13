#!/usr/bin/env bash

### Bash Helpers ###
bold=$(tput bold)
normal=$(tput sgr0)


### Format notebooks in src ###
for notebook in src/*.ipynb
do
	echo "${bold}Black Formatter:${normal} ${notebook}"
	poetry run nbqa black $notebook --nbqa-mutate
	echo "${bold}Sort Imports:${normal} ${notebook}"
	poetry run nbqa isort $notebook --nbqa-mutate
done


### Format all Python files in src ###
for file in src/*.py
do
	echo "${bold}Black Formatter:${normal} ${file}"
	poetry run black $file
	echo "${bold}Sort Imports:${normal} ${file}"
	poetry run isort $file
done
