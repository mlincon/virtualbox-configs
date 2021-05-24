#!/usr/bin/bash

install_miniconda () {

# Source: https://dev.to/waylonwalker/installing-miniconda-on-linux-from-the-command-line-4ad7
mkdir -p ~/miniconda3

# get the latest version
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh

# bash option: -b: run unattended (accept all agreements), -u: updates existing installation, -p: directory to install
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh
~/miniconda3/bin/conda init bash
~/miniconda3/bin/conda init zsh

}

# log
install_miniconda > miniconda_installation.log