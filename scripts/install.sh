#!/usr/bin/env bash

### Bash Helpers ###
bold=$(tput bold)
normal=$(tput sgr0)

### Install dependencies ###
function install {
	if [[ ! $(pip list|grep $1) ]]; then
		echo "${bold}Install:${normal} $1"
		pip install --quiet $1
	fi
}

install poetry

echo "${bold}Install project dependencies${normal}"
poetry install

echo "${bold}Create custom Jupyter kernel${normal}"
poetry run python -m ipykernel install --user --name blinkist
