#!/usr/bin/env bash
#
# == How To Install and Use Docker on CentOS 7 ==
# First, let’s update the package database:
sudo yum check-update ; sleep 2s
#
# Now run this command. It will add the official Docker repository, download the latest version of Docker, and install it
curl -fsSL https://get.docker.com/ | sh ; sleep 2s
#
# After installation has completed, start the Docker daemon:
sudo systemctl start docker ; sleep 2s
#
# Verify that it’s running:
sudo systemctl status docker ; sleep 2s
#
# Lastly, make sure it starts at every server reboot:
sudo systemctl enable docker ; sleep 2s
#
# Ref - https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-centos-7
