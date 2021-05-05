#!/bin/bash
# update 2021.05.05

echo "���������΍� .bashrc�̖��[�ɋL��"
echo '# ���������΍� .bashrc�̖��[�ɋL��' >> ~/.bashrc
echo 'case $TERM in' >> ~/.bashrc
echo '      linux) LANG=C ;;' >> ~/.bashrc
echo '      *)       LANG=ja_JP.UTF-8;;' >> ~/.bashrc
echo 'esac' >> ~/.bashrc

# -----------------------------------------------------------------------------
# Ubuntu18.04��virtualgl��Turbovnc���C���X�g�[��
# URL1: https://qiita.com/exthnet/items/dcb0bd94f09a2b4c9835
# URL2: https://qiita.com/Shunmo17/items/c2e21af5d5f609c01b08
# URL3: https://geraniums.hatenablog.com/entry/2018/05/25/151153
# -----------------------------------------------------------------------------
echo "#wget virtualgl_2.6.5_amd64.deb"
wget https://sourceforge.net/projects/virtualgl/files/2.6.5/virtualgl_2.6.5_amd64.deb/download
mv download virtualgl_2.6.5_amd64.deb

echo "#wget turbovnc_2.2.6_amd64.deb"
wget https://sourceforge.net/projects/turbovnc/files/2.2.6/turbovnc_2.2.6_amd64.deb/download
mv download turbovnc_2.2.6_amd64.deb

echo "# install virtualgl"
sudo dpkg -i virtualgl_*_amd64.deb

# -----------------------------------------------------------------------------
# *** ���������CUI�Ŏ��{ ***
# -----------------------------------------------------------------------------
# stop desktop
# --- ubuntu 16.04 ---
# Ctl + Alt + F1��CUI�Ɉړ��B���O�ɕ��������΍��K�v
# sudo systemctl stop lightdm

# --- ubuntu 18.04 ---
# Ctl + Alt + F3��CUI�Ɉړ��B���O�ɕ��������΍��K�v
# sudo systemctl isolate multi-user.target
 
# setup virtualgl
# �r���̎���͉E���Q�l https://virtualgl.org/vgldoc/2_2_1/#hd005001
# 1, y, y, y, x 
# $ sudo /opt/VirtualGL/bin/vglserver_config

# start desktop
# --- ubuntu 16.04 ---
# sudo systemctl start lightdm

# --- ubuntu 18.04 ---
# $ sudo systemctl start graphical.target

# ���܂��Ȃ��i���Ȃ��Ă����H)
# $ xauth merge /etc/opt/VirtualGL/vgl_xauth_key

# GUI�Ɉړ�
# install turboVNC
# $ sudo dpkg -i turbovnc_*_amd64.deb
 
# start TurboVNC
# ����̓p�X���[�h�o�^�B�p�X���[�h�����񒷂�8�ɐ�������Ă���̂ɒ���
# $ /opt/TurboVNC/bin/vncserver -depth 24

# �N������VNC���m�F
# �Q�l:https://qiita.com/Sawahashi/items/156be0baaf6384884f3d
# $ /opt/TurboVNC/bin/vncserver -list

# stop TurboVNC
# $ /opt/TurboVNC/bin/vncserver -kill :1

# windows�Ń��O�C�����鎞
# ubuntu����/home/username/.vnc/xxx.log�Ƀ|�[�g�ԍ����L��(��:5901�Ȃ�)

# �����Ӂ� vnc�����O�C�����č���ʂ��o����(anaconda�C���X�g�[����)
# ���̏ꍇ�� Anaconda �����������Ă���悤�����AAnaconda ���g���Ă��Ȃ��ꍇ�ł����l�Ȗ�肪�N���邱�Ƃ�����B
# http://penguinitis.g1.xrea.com/computer/linux/VNC.html
#�@��
#Anaconda���C���X�g�[����A.bashrc�̈ȉ����R�����g���Ă��邩�`�F�b�N
##export PATH="/root/anaconda3/bin:$PATH"

# --- ��������͕K�v�Ȃ���{ ---
# make alias
# turbovnc�̋N���G�C���A�X���쐬. nano ~/.bashrc�����s��
# alias TVNC='/opt/TurboVNC/bin/vncserver -depth 24' 

