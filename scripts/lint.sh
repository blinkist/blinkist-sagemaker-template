#!/usr/bin/env bash

### Bash Helpers ###
bold=$(tput bold)
normal=$(tput sgr0)

### Install dependencies ###
function install {
	if [[ ! $(pip list|grep $1) ]]; then
		pip install --quiet $1
	fi
}


install nbqa
install flake8


### Lint notebooks in src ###
for notebook in src/*.ipynb
do
	echo "${bold}Flake8 Linter:${normal} ${notebook}"
	nbqa flake8 $notebook --ignore=E402
done


### Format all Python files in src ###
for file in src/*.py
do
	echo "${bold}Flake8 Linter:${normal} ${file}"
	flake8 $file --ignore=E402
done
