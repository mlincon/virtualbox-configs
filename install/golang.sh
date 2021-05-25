#!/usr/bin/bash

echo "=========== Installing golang ==========="
install_go () {
# download the required version and archict
VERSION=$1
binDir=$HOME
curl --create-dirs -O --output-dir "${binDir}/go-source" -L "https://golang.org/dl/go${VERSION}.linux-amd64.tar.gz"

# extract tarball
rm -rf /usr/local/go && sudo tar -C /usr/local -xzf "${binDir}/go-source/go${VERSION}.linux-amd64.tar.gz"

# append to zshrc
cat >>~/.zshrc <<EOL

#go
export PATH=\$PATH:/usr/local/go/bin
EOL

}

# log stdout
install_go $1 > log/go_installation.log
