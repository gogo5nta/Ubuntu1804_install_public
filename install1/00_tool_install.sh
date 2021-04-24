#!/bin/bash
# update 2021.04.24

# Check OS ver and Kernel ver
echo "# Check OS ver and Kernel ver"
cat /etc/os-release
uname -r

# rename English holder
echo "# rename English holder"
LANG=C xdg-user-dirs-gtk-update

# install chromium-browser
echo "# install chromium-browser"
sudo apt -y install chromium-browser

# install terminator
echo "# install terminator"
sudo apt -y install terminator

# install ssh
echo "# install ssh"
sudo apt -y install openssh-server

# install good tool gnome-tweaks
echo "# install good tool gnome-tweaks"
sudo apt -y install gnome-tweaks
