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

# Gtk-Message: Failed to load module "canberra-gtk-module"
# https://www.web-dev-qa-db-ja.com/ja/gtk/%E3%83%A2%E3%82%B8%E3%83%A5%E3%83%BC%E3%83%AB%E3%80%8Ccanberragtkmodule%E3%80%8D%E3%81%AE%E8%AA%AD%E3%81%BF%E8%BE%BC%E3%81%BF%E3%81%AB%E5%A4%B1%E6%95%97%E3%81%97%E3%81%BE%E3%81%97%E3%81%9F%E6%97%A2%E3%81%AB%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB%E3%81%95%E3%82%8C%E3%81%A6%E3%81%84%E3%81%BE%E3%81%99/961618354/
Sudo apt -y install libcanberra-gtk*
