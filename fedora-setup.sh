#!/usr/bin/bash
cd ~
# Download files
wget insert fedora packages here
wget insert bash files here
# Install Rpmfusion repo
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y

# grab all packages to install
sudo dnf install $(cat ~/fedora.packages) -y

cat ~/bashrc.aliases >> ~/.bashrc
