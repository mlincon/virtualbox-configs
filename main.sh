#!/usr/bin/bash

# ensure that your system is up to date, and you have the gnupg, software-properties-common, and curl packages installed
apt-get update
apt-get install -y \
    curl \
    gnupg \
    jq \
    software-properties-common \
    unzip

# source scripts
source ./install/git.sh
source ./install/oh-my-zsh.sh
source ./install/miniconda.sh
source ./install/golang.sh "1.16.4"
source ./install/docker.sh
source ./install/docker-compose.sh
source ./install/terraform.sh
source ./install/vscode.sh
source ./install/postgresql.sh

# get programs from snap
apt update
apt install -y snapd
snap install postman
snap install postbird

# clean up cache and autoremove
apt-get clean
apt autoremove --purge

# additional configuration
source ./helper/git-config.sh
source ./helper/docker-as-non-root-user.sh