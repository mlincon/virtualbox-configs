#!/usr/bin/bash/

install_zsh () {

# install zsh
apt-get update
apt-get install -y zsh

# get antigen
curl -L git.io/antigen > antigen.zsh

# create antigenrc
cat >~/.antigenrc <<EOL
# Load oh-my-zsh library.
antigen use oh-my-zsh

# Load bundles from the default repo (oh-my-zsh).
antigen bundle git
antigen bundle command-not-found
antigen bundle docker

# Load bundles from external repos.
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

# Select theme.
# antigen theme denysdovhan/spaceship-prompt
# antigen theme bureau

# Tell Antigen that you're done.
antigen apply
EOL


# create .zshrc
cat >~/.zshrc <<EOL
# Load Antigen
source ~/antigen.zsh

# Load Antigen configurations
antigen init ~/.antigenrc
EOL


# set zsh to default
chsh -s $(which zsh)

}

# log
install_zsh > zsh_installation.log