#!/usr/bin/bash

# ensure that your system is up to date, and you have the gnupg, software-properties-common, and curl packages installed
apt-get update
apt-get install -y \
    curl \
    git \
    gnupg \
    jq \
    software-properties-common \
    unzip

# get programs from snap
apt update
apt install -y snapd

echo "=========== Installing from Snap ==========="
snap install postbird
snap install postman

# 
echo "=========== Installing oh-my-zsh + Antigen ==========="
source ./install/oh-my-zsh.sh

echo "=========== Installing miniconda ==========="
source ./install/miniconda.sh

echo "=========== Installing golang ==========="
source ./install/golang.sh

echo "=========== Installing Docker and Docker-compose ==========="
source ./install/docker.sh
source ./install/docker-compose.sh

echo "=========== Installing HashiCorp Terraform ==========="
source ./install/terraform.sh

echo "=========== Installing VSCode ==========="
source ./install/vscode.sh


# clean up cache and autoremove
apt-get clean
apt autoremove --purge