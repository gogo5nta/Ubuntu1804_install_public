#!/bin/bash
# update 2021.04.24

## *** Reffer ***
## ・Ubuntu install of ROS Melodic
##   http://wiki.ros.org/melodic/Installation/Ubuntu
## ・ROS Melodicのインストール
##   http://joe.ash.jp/program/ros/setup/install_ros_melodic.htm
## ・Getting Started with ROS Melodic on Raspberry Pi 4 Model B
##    https://www.hackster.io/shahizat005/getting-started-with-ros-melodic-on-raspberry-pi-4-model-b-cbdec8

## ubuntu18.04のproxy環境下(会社)などの対策
## https://umashika5555.hatenablog.com/entry/2018/09/25/023919
#$ sudo nano /etc/environment
#-----------------------------------------
#http_proxy="http://proxy-server:port/"
#https_proxy="http://proxy-server:port/"
#-----------------------------------------

## .bashrcの最後に好きなエディタを使い以下の３行を追加する。
## https://demura.net/misc/16564.html
#$ nano ~/.bashrc
#-----------------------------------------
#export ftp_proxy="ftp://プロキシサーバー名:ポート番号/"
#export http_proxy="http://プロキシサーバー名:ポート番号/"
#export https_proxy="https://プロキシサーバー名:ポート番号/"
#-----------------------------------------

## aptの設定を行う。
#$ cd /etc/apt/apt.conf.d
#好きなエディタを使い上のディレクトリ下でapt.confを作成する。ファイルの中身は次のとおり。
#$ nano apt.conf
#-----------------------------------------
#Acquire::http::proxy "http://プロキシサーバー名:ポート番号/";
#Acquire::https::proxy "https://プロキシサーバー名:ポート番号/";
#Acquire::ftp::proxy "ftp://プロキシサーバー名:ポート番号/";
#-----------------------------------------

## general
sudo apt -y update
sudo apt -y upgrade
sudo apt -y autoremove

## Ubuntu18.04 error "too early for operation, device not yet seeded or device model not acknowledged"
## https://www.footfoot.tokyo/article104/ubutnu-18-04-too-early-for-operation
sudo apt -y purge snapd
sudo apt -y install snapd

## Setup your sources.list
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

## Setup your keys
## apt-key proxy: https://qiita.com/nmatsui/items/816051fe6445db116e9a
#sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --keyserver-option http-proxy=http://x:y@proxy:port --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

## To be sure that your Ubuntu package index is up to date, type the following command
sudo apt -y update

## If you will see the following error in the terminal:
## E: Could not get lock /var/lib/apt/lists/lock - open (11: Resource temporarily unavailable)
## It can be solved by running following command:
# sudo rm /var/lib/apt/lists/lock

## Install ros-Melodic-desktop-full
sudo apt -y install  ros-melodic-desktop-full

# Environment setup
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc

## Environment setup
## If you just want to change the environment of your current shell, instead of the above you can type:
# source /opt/ros/melodic/setup.bash

## Install necessary dependencies
sudo apt -y install  python-rosdep python-rosinstall-generator python-wstool python-rosinstall python-roslaunch build-essential  cmake

## Initialize rosdep
sudo rosdep init
rosdep update

## Create and initialize the catkin workspace
mkdir -p ~/catkin_workspace/src
cd ~/catkin_workspace/src
catkin_init_workspace
cd ~/catkin_workspace/
catkin_make

## Add the catkin_workspace to your ROS environment
echo "## Add the catkin_workspace to your ROS environment" >> ~/.bashrc
echo "source ~/catkin_workspace/devel/setup.bash" >> ~/.bashrc

## Step 11: Check the ROS environment variables
export | grep ROS
