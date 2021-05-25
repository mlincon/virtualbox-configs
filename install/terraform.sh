#!/usr/bin/bash

echo "=========== Installing HashiCorp Terraform ==========="

install_terraform () {

# add the HashiCorp GPG key
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -

# add the official HashiCorp linux repository
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

# update to add repo
sudo apt-get update 

# install terraform cli
sudo apt-get install -y terraform

# install autocomplete for bash and zsh
terraform -install-autocomplete

}

# log stdout
install_terraform > log/terraform_installation.log
