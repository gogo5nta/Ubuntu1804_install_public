#!/bin/bash
# update 2021.04.24

# rename English holder
echo "# rename English holder"
LANG=C xdg-user-dirs-gtk-update

# install chromium-browser
echo "# install chromium-browser"
sudo apt-get -y install chromium-browser

# install terminator
echo "# install terminator"
sudo apt-get -y install terminator

# install ssh
echo "# install ssh"
sudo apt-get -y install openssh-server

# install good tool gnome-tweaks
echo "# install good tool gnome-tweaks"
sudo apt-get -y install gnome-tweaks
