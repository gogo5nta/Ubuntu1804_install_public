#!/bin/bash
# update 2021.05.20

## ��{�́uUbuntu18.04: Kobuki��ROS Melodic�œ������v���Q��
## URL: https://demura.net/education/lecture/16609.html

## ����m�F��
## $ cat /etc/os-release
## -----------------------
## #Ubuntu 18.04.5  (18.0.4.3 JP���C���X�g�[�����Aupdate)
##
## $ sudo uname -a
## -----------------------
## linux CF-S10 5.4.0-72-generic

## --- ���\�z�܂� ---
echo "��ƃX�y�[�X�̍쐬�i�Ȃ���΁j"
source /opt/ros/melodic/setup.bash
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src
catkin_init_workspace

echo "Turtlebot2�֘A�p�b�P�[�W�̃C���X�g�[��"
cd  ~/catkin_ws
curl -sLf https://raw.githubusercontent.com/gaunthan/Turtlebot2-On-Melodic/master/install_basic.sh | bash

echo "�K�v�ȃp�b�P�[�W���C���X�g�[��"
sudo apt install python-catkin-tools
sudo apt-get install ros-melodic-kobuki-* -y
sudo apt-get install ros-melodic-ecl-streams -y
sudo apt install ros-melodic-joy

echo "�ǉ��C���X�g�[��(laptop_battery_monitor �p�b�P�[�W)"
cd ~/catkin_ws/src 
git clone https://github.com/ros-drivers/linux_peripheral_interfaces.git

echo "�r���h"
cd ~/catkin_ws
catkin build

## --- �L�[�{�[�h�ɂ�鐧�� ---
#�m�[�g�p�\�R����Kobuki��ڑ�

#�^�[�~�i��1
#$ source ~/catkin_ws/devel/setup.bash
#$ roslaunch turtlebot_bringup minimal.launch

#�^�[�~�i��2
#$ source ~/catkin_ws/devel/setup.bash
#$ roslaunch turtlebot_teleop  keyboard_teleop.launch

#�ȉ��̃L�[�{�[�h����ɂ��Turtlebot2�𑀍�
#�@u i o
#�@j k l
#�@m , .
#i: �O�i
#u: ���O�����֐i��
#j: ����]
#o: �E�O�����֐i��
#l: �E��]
#m: ��������֐i��
#,: ��i
#.  �E������֐i��
#k: ��~

