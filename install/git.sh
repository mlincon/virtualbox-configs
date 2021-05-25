#!/usr/bin/bash

echo "=========== Installing git ==========="
install_git () {

# add repository
add-apt-repository -y ppa:git-core/ppa

# install git
apt update
apt install -y git

}

# log stdout
install_git > log/git_installation.log