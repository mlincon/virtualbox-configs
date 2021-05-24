#!/usr/bin/bash

install_vscode () {

# add repository and key manually
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg

# update package cache and install
apt install -y apt-transport-http
apt update
apt install -y code

# move settings
cp vscode-settings.json $HOME/.config/Code/User/settings.json

}

# log
install_vscode > vscode_installation.log