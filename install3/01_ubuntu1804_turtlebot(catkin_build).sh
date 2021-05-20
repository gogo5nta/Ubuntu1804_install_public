#!/bin/bash
# update 2021.05.20

## 基本は「Ubuntu18.04: KobukiをROS Melodicで動かす」を参照
## URL: https://demura.net/education/lecture/16609.html

## 動作確認環境
## $ cat /etc/os-release
## -----------------------
## #Ubuntu 18.04.5  (18.0.4.3 JPをインストールし、update)
##
## $ sudo uname -a
## -----------------------
## linux CF-S10 5.4.0-72-generic

## --- 環境構築まで ---
echo "作業スペースの作成（なければ）"
source /opt/ros/melodic/setup.bash
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src
catkin_init_workspace

echo "Turtlebot2関連パッケージのインストール"
cd  ~/catkin_ws
curl -sLf https://raw.githubusercontent.com/gaunthan/Turtlebot2-On-Melodic/master/install_basic.sh | bash

echo "必要なパッケージをインストール"
sudo apt install python-catkin-tools
sudo apt-get install ros-melodic-kobuki-* -y
sudo apt-get install ros-melodic-ecl-streams -y
sudo apt install ros-melodic-joy

echo "追加インストール(laptop_battery_monitor パッケージ)"
cd ~/catkin_ws/src 
git clone https://github.com/ros-drivers/linux_peripheral_interfaces.git

echo "ビルド"
cd ~/catkin_ws
catkin build

## --- キーボードによる制御 ---
#ノートパソコンとKobukiを接続

#ターミナル1
#$ source ~/catkin_ws/devel/setup.bash
#$ roslaunch turtlebot_bringup minimal.launch

#ターミナル2
#$ source ~/catkin_ws/devel/setup.bash
#$ roslaunch turtlebot_teleop  keyboard_teleop.launch

#以下のキーボード操作によりTurtlebot2を操作
#　u i o
#　j k l
#　m , .
#i: 前進
#u: 左前方向へ進む
#j: 左回転
#o: 右前方向へ進む
#l: 右回転
#m: 左後方向へ進む
#,: 後進
#.  右後方向へ進む
#k: 停止

