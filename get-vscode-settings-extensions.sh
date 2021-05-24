#!/usr/bin/bash

# get settings
cp $HOME/.config/Code/User/settings.json vscode-settings.json

# get extensions
code --list-extensions > vscode-extensions.txt