#!/usr/bin/bash

install_aws_cli () {
# get cli zip file
curl --output-dir $HOME "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip ~/awscliv2.zip -d ~/

# install
sudo ~/aws/install
}

# log stdout
install_aws_cli > log/aws_installation.log
