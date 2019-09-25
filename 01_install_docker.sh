#! /bin/bash
#
# == How To Install and Use Docker on Ubuntu 18.04 ==
# First, update your existing list of packages:
sudo apt update ; sleep 2s
# Next, install a few prerequisite packages which let apt use packages over HTTPS:
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y ; sleep 2s
# Then add the GPG key for the official Docker repository to your system:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - ; sleep 2s
# Add the Docker repository to APT sources:
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
# Next, update the package database with the Docker packages from the newly added repo:
sudo apt update ; sleep 2s
# Finally, install Docker:
sudo apt install docker-ce -y ; sleep 2s
# Docker should now be installed, the daemon started, and the process enabled to start on boot. Check that it’s running:
sudo systemctl status docker ; sleep 2s
# Enable docker to start on boot
sudo systemctl enable docker ; sleep 2s
#
# Ref - https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-18-04
