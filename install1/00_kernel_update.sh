#!/bin/bash
#update 2022.02.03

# https://qiita.com/IGURA/items/877e12032368eb70e6cc
# https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.16/

wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.16/amd64/linux-headers-5.16.0-051600-generic_5.16.0-051600.202201092355_amd64.deb

wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.16/amd64/linux-headers-5.16.0-051600_5.16.0-051600.202201092355_all.deb

wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.16/amd64/linux-image-unsigned-5.16.0-051600-generic_5.16.0-051600.202201092355_amd64.deb

wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.16/amd64/linux-modules-5.16.0-051600-generic_5.16.0-051600.202201092355_amd64.deb

sudo dpkg -i *.deb
