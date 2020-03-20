#!/usr/bin/bash
cd ~
# Download files
wget https://github.com/mattyb74/Fedora-Setup/blob/master/fedora.packages
# wget insert bash files here
# Install Rpmfusion repo
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y

# grab all packages to install
sudo dnf install $(cat ~/fedora.packages) -y

#cat ~/bashrc.aliases >> ~/.bashrc

# Copy awesomevm files into correct location
cp -R awesome /.config/awesome

# Uninstall Gnome Desktop Environment
sudo dnf remove gnome-desktop


