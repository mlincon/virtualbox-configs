#!/usr/bin/bash

install_docker () {

# uninstall older versions
apt-get remove docker docker-engine docker.io containerd runc

# set-up repository
apt-get update
apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

# add docker key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# set-up stable repository
echo \
"deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# install docker engine
apt-get update
apt-get install -y docker-ce docker-ce-cli containerd.io


# add user to docker group

# create docker group if it does not exist
groupadd docker

# add user to the docker group
usermod -aG docker $USER
newgrp docker

}

# log
install_docker > docker_installation.log