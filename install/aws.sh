#!/usr/bin/bash

install_aws_cli () {
# change directory to home
cd ~

# get cli zip file
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip

# install
sudo ./aws/install
}

# log
install_aws_cli > log/aws_installation.log