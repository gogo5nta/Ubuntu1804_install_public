#!/bin/bash
# update 2021.06.11

#=============================================================
#Ubuntu��Intel Realsense D415���g����悤�ɂ���܂�(ROS����E�Ȃ�����)
#=============================================================
#   https://qiita.com/kei_mo/items/c0387b7d277948451881


# ���J����o�^
echo "���J����o�^"

#��ʁF
sudo apt-key adv --keyserver keys.gnupg.net --recv-key C8B3A55A6F3EFCDE || sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-key C8B3A55A6F3EFCDE

#Proxy��(���)
#sudo -E apt-key adv --keyserver keys.gnupg.net --recv-key C8B3A55A6F3EFCDE || sudo -E apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-key C8B3A55A6F3EFCDE


# �T�[�o�[�����|�W�g�����X�g�ɓo�^
echo "�T�[�o�[�����|�W�g�����X�g�ɓo�^(Ubuntu18)"
# ubuntu18
sudo add-apt-repository "deb http://realsense-hw-public.s3.amazonaws.com/Debian/apt-repo bionic main" -u

# ubuntu16
# sudo add-apt-repository "deb http://realsense-hw-public.s3.amazonaws.com/Debian/apt-repo xenial main" -u


# ���C�u����(liblealsense2)���C���X�g�[��
echo "���C�u����(liblealsense2)���C���X�g�[��"
sudo apt-get -y install librealsense2-dkms
sudo apt-get -y install librealsense2-utils

#�J���җp�c�[���A�f�o�b�K�c�[�����C���X�g�[��(�I�v�V�����B����Ȃ��Ė��Ȃ�)
#sudo apt-get -y install librealsense2-dev
#sudo apt-get -y install librealsense2-dbg


#�p�b�P�[�W�̃A�b�v�O���[�h
#�@�Q�l�FUbuntu18.04: RealSense D435i��ROS Melodic�Ŏg��
#�@�@�@�@https://demura.net/robot/16525.html
#
#�ȉ��̎菇�ŃA�b�v�O���[�h����B�����ł͏�ŃC���X�g�[�������p�b�P�[�W�����A�b�v�O���[�h����B
#�A�b�v�O���[�h�\�Ȃ��ׂẴp�b�P�[�W���A�b�v�O���[�h����ƋH�ɓ����Ȃ��Ȃ�p�b�P�[�W������
#�̂ł��̕��@�͂����߁B

echo "�p�b�P�[�W�̃A�b�v�O���[�h"
sudo apt update
#���C�u����
sudo apt --only-upgrade -y install librealsense2-utils librealsense2-dkms

#���C�u����+�f�o�b�O(�I�v�V����)
#sudo apt --only-upgrade -y install librealsense2-utils librealsense2-dkms librealsense2-dev librealsense2-dbg 


#PC����x�ċN�����鎖
echo "PC����x�ċN�����鎖"
echo "sudo reboot"


#����m�F(realsense���Ȃ��A�ȉ��̃R�}���h�ɂ��realsense viewer�𗧂��グ)
#reslsense-viewer
