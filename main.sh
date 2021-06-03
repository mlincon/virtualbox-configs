#!/usr/bin/bash

# current directory
cwdir="$PWD"

# # ensure that your system is up to date, and you have the gnupg, software-properties-common, and curl packages installed
sudo apt-get update
sudo apt-get install -y \
    curl \
    gnupg \
    jq \
    openjdk-8-jre \
    software-properties-common \
    unzip

# source scripts
source ./install/git.sh
cd $cwdir && source ./install/aws.sh
cd $cwdir && source ./install/oh-my-zsh.sh
cd $cwdir && source ./install/golang.sh "1.16.4"
cd $cwdir && source ./install/miniconda.sh
cd $cwdir && source ./install/docker.sh
cd $cwdir && source ./install/docker-compose.sh
cd $cwdir && source ./install/terraform.sh
cd $cwdir && source ./install/vscode.sh
cd $cwdir && source ./install/postgresql.sh

# clean up cache and autoremove
sudo apt-get clean
sudo apt autoremove --purge

# additional configuration
source ./helper/git-config.sh
source ./helper/docker-as-non-root-user.sh
