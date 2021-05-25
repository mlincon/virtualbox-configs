#!/usr/bin/bash/

echo "=========== Installing oh-my-zsh + Antigen ==========="

install_zsh () {

# install zsh
sudo apt-get update
sudo apt-get install -y zsh

# get antigen
curl -L git.io/antigen > ~/antigen.zsh

# copy antigenrc
cp data/.antigenrc ~/.antigenrc

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

\n# To customize prompt, run \`p10k configure\` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
EOL

# to set zsh to default run
# chsh -s $(which zsh)

}

# log stdout
install_zsh > log/zsh_installation.log
