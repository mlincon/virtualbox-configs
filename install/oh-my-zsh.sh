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
# antigen theme bureau
antigen theme romkatv/powerlevel10k

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

# use powerkevek10k theme
cp data/.p10k.zsh ~/.p10k.zsh
cat >>~/.zshrc <<EOL
# To customize prompt, run \`p10k configure\` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
EOL

# set zsh to default
chsh -s $(which zsh)

}

# log
install_zsh > log/zsh_installation.log