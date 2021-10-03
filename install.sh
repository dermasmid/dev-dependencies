#!/bin/sh
sudo apt-get update && sudo apt-get upgrade -y
sudo apt install ./debs/*.deb --allow-downgrades -y
sudo apt install filezilla python3-pip htop docker.io network-manager-openconnect-gnome flameshot -y
sudo apt-get update && sudo apt-get upgrade -y
sudo apt autoremove -y

sudo pip3 install --trusted-host pypi.org --trusted-host files.pythonhosted.org docker-compose
sudo chmod 666 /var/run/docker.sock
sudo systemctl enable docker
sudo usermod -aG docker $USER
