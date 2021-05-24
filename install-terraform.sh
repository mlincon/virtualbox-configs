#!/usr/bin/bash

install_terraform () {

# add the HashiCorp GPG key
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -

# add the official HashiCorp linux repository
apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

# update to add repo
apt-get update 

# install terraform cli
apt-get install -y terraform

# install autocomplete for bash and zsh
terraform -install-autocomplete

}

# log
install_terraform > terraform_installation.log