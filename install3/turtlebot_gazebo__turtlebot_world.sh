#!/bin/bash
# update 2021.05.20

## ���O�ɁuUbuntu18.04: Kobuki��ROS Melodic�œ������v���Q�Ƃ��A���@�œ������鎖
## URL: https://demura.net/education/lecture/16609.html

## �Q�l�uROS Melodic: �V�~�����[�^��Tutlebot2 (Kobuki)�𓮂������I�v
## URL: https://demura.net/education/lecture/16767.html

## ����m�F��
## $ cat /etc/os-release
## -----------------------
## #Ubuntu 18.04.5  (18.0.4.3 JP���C���X�g�[�����Aupdate)
##
## $ sudo uname -a
## -----------------------
## linux CF-S10 5.4.0-72-generic

echo "ROS�̃V�~�����[�^Gazebo���N��(�����5�����x������)"
$ roslaunch turtlebot_gazebo turtlebot_world.launch

# �ʂ̒[�����J���A�L�[�{�[�h���烍�{�b�g�𑀏c���邽�߂�launch�t�@�C�����N���B
# �}�E�X�̃J�[�\����turtlebot_teleop_key.launch���N�������[����ɂȂ���Γ����Ȃ��̂Œ��ӁB
# $ roslaunch turtlebot_teleop keyboard_teleop.launch
