#!/bin/bash
# update 2021.05.20

# --------------------------------------------------------
# Docker�̃C���X�g�[�� (Ubuntu 18.04 LTS)
# https://www.aiprogrammers.net/entry/2020/04/18/164548
#
# NVIDIA container toolkit���g���āAdocker�̃R���e�i���cuda�𓮂���(�r���܂�)
# URL:https://qiita.com/Hiroaki-K4/items/c1be8adba18b9f0b4cef
# --------------------------------------------------------

# �Â�docker���폜
# sudo apt-get remove docker docker-engine docker.io containerd runc

# Docker���C���X�g�[��
sudo apt-get update
sudo apt install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD8

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io -y

# �m�F(Docker)
sudo docker run hello-world

# �m�F(Docker version)
docker -v

# Docker�R�}���h��sudo�Ȃ��Ŏ��s������@
# URL:https://insilico-notebook.com/docker-run-without-sudo/
# URL:https://qiita.com/DQNEO/items/da5df074c48b012152ee
# docker�O���[�v���Ȃ���΍��
sudo groupadd docker

# ���s���[�U��docker�O���[�v�ɏ���������
sudo usermod -aG docker $USER 
newgrp docker 

# docker�f�[�������ċN������ (CentOS7�̏ꍇ)
sudo systemctl restart docker

# test
docker run hello-world 
