#!/usr/bin/bash

install_docker_compose () {

# set-up repository
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# install docker-compose
sudo chmod +x /usr/local/bin/docker-compose

}

# log
install_docker_compose > log/docker-compose_installation.log