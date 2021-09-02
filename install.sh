#!/bin/sh
sudo apt-get update && sudo apt-get upgrade -y
sudo apt install debs/*.deb
sudo apt-get update && sudo apt-get upgrade -y
sudo apt install filezilla python3-pip htop docker.io network-manager-openconnect-gnome flameshot -y


pip3 install docker-compose
sudo chmod 666 /var/run/docker.sock
sudo systemctl enable docker
sudo usermod -aG docker $USER
