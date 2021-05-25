#!/usr/bin/bash

# add user to docker group so that it can be run as non-root user

# create docker group if it does not exist
sudo groupadd docker

# add user to the docker group
sudo usermod -aG docker $USER
newgrp docker
