#!/usr/bin/bash


echo "=========== Installing VSCode ==========="

install_vscode () {

# add repository and key manually
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg

# update package cache and install
sudo apt install -y apt-transport-http
sudo apt update
sudo apt install -y code

# install extensions
while read extension
do
    code --install-extension "$extension"
done < data/vscode-extensions.txt

# move settings
cp data/vscode-settings.json $HOME/.config/Code/User/settings.json

}

# log stdout
install_vscode > log/vscode_installation.log
