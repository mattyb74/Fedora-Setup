#!/usr/bin/bash

cd ~

# Download files
wget https://github.com/mattyb74/Fedora-Setup/blob/master/fedora.packages
wget https://github.com/mattyb74/Fedora-Setup/blob/master/bashrc.aliases

# Install Rpmfusion non & free repos
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y

# Update OS
sudo dnf check-upgrade && sudo dnf upgrade -y

# Grab and install packages from downloaded list
sudo dnf install $(cat ~/fedora.packages) -y

# Copy aliases from "bashrc.aliases to bashrc file
cat ~/bashrc.aliases >> ~/.bashrc

# Copy awesomewm files into correct location
cp -R awesome /.config/awesome

# Uninstall Gnome Desktop Environment
sudo dnf remove gnome-desktop
