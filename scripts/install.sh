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


echo "${bold}Upgrade GCC on Sagemaker${normal}"
sudo yum install gcc64 -y;
sudo yum install gcc72 gcc72-c++ -y;

install "poetry>=1.1.4"

echo "${bold}Install project dependencies${normal}"
poetry install

echo "${bold}Create custom Jupyter kernel${normal}"
poetry run python -m ipykernel install --user --name blinkist
