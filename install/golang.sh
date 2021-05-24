#!/usr/bin/bash

install_go () {

# change to home directory
cd ~

# download the required version and archict
VERSION=$1 
$ curl -O -L "https://golang.org/dl/go${VERSION}.linux-amd64.tar.gz"

# extract tarball
rm -rf /usr/local/go && tar -C /usr/local -xzf "go${VERSION}.linux-${ARCH}.tar.gz"

# append to zshrc
echo "#go" >> ~/.zshrc
echo "export PATH=$PATH:/usr/local/go/bin" >> >> ~/.zshrc

}

# log
install_go > log/go_installation.log