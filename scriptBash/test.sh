#!/bin/bash

K=2
echo "mon message ${K}"

sudo apt-add-repository ppa:cubic-wizard/release
sudo apt update
sudo apt install -y filezilla cura gdebi vlc icedtea-netx synaptic gimp virtualbox virtualbox-ext-pack cubic ubuntu-restricted-extras exfat-utils
sudo apt upgrade && sudo apt dist-upgrade
sudo dpkg -i ~/Bureau/*.deb
sudo apt --fix-broken install