#!/bin/bash

sudo apt-get update
sudo apt-get install -y bridge-utils htop nmap apt-transport-https
sudo apt-get install -y linux-image-extra-$(uname -r)
wget -qO- 'https://pgp.mit.edu/pks/lookup?op=get&search=0xee6d536cf7dc86e2d7d56f59a178ac6c6238f52e' | sudo apt-key add --import
echo "deb https://packages.docker.com/1.11/apt/repo ubuntu-trusty main" | sudo tee /etc/apt/sources.list.d/docker.list
sudo apt-get update && sudo apt-get install -y docker-engine
sudo usermod vagrant -aG docker
