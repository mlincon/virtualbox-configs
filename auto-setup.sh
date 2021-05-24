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

echo "=========== Installing oh-my-zsh + Antigen ==========="
source ./install/oh-my-zsh.sh

echo "=========== Installing miniconde ==========="
source ./install/miniconda.sh

echo "=========== Installing Docker ==========="
source ./install/docker.sh

echo "=========== Installing HashiCorp Terraform ==========="
source ./install/terraform.sh

echo "=========== Installing VSCode ==========="
source ./install/vscode.sh
