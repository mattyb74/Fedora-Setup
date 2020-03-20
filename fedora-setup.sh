#!/usr/bin/bash

cd ~

# Download files
wget https://github.com/mattyb74/Fedora-Setup/blob/master/fedora.packages
wget https://github.com/mattyb74/Fedora-Setup/blob/master/bashrc.aliases
wget https://github.com/mattyb74/Fedora-Setup/tree/master/awesome

# Install Rpmfusion non & free repos
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y

# Update OS
sudo dnf check-upgrade && sudo dnf upgrade -y

# Grab and install packages from downloaded list
sudo dnf install $(cat ~/fedora.packages) -y

# Copy aliases from "bashrc.aliases to bashrc file
cat ~/bashrc.aliases >> ~/.bashrc

# Configure awesome
cp -R /etc/xdg/awesome/ .config/awesome/
cp -R /usr/share/awesome/* .config/awesome/
cp -R awesome/rc.lua .config/awesome/
cp -R awesome/theme.lua .config/awesome/themes/default/
cp -R awesome/Wallpaper.png .config/awesome/themes/default/
