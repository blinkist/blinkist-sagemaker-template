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
install black
install isort


### Format notebooks in src ###
for notebook in src/*.ipynb
do
	echo "${bold}Black Formatter:${normal} ${notebook}"
	nbqa black $notebook --nbqa-mutate
	echo "${bold}Sort Imports:${normal} ${notebook}"
	nbqa isort $notebook --nbqa-mutate
done


### Format all Python files in src ###
for file in src/*.py
do
	echo "${bold}Black Formatter:${normal} ${file}"
	black $file
	echo "${bold}Sort Imports:${normal} ${file}"
	isort $file
done
