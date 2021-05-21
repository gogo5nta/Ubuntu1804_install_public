#!/bin/bash
# update 2021.05.20

## 事前に「Ubuntu18.04: KobukiをROS Melodicで動かす」を参照し、実機で動かせる事
## URL: https://demura.net/education/lecture/16609.html

## 参考「ROS Melodic: シミュレータでTutlebot2 (Kobuki)を動かそう！」
## URL: https://demura.net/education/lecture/16767.html

## 動作確認環境
## $ cat /etc/os-release
## -----------------------
## #Ubuntu 18.04.5  (18.0.4.3 JPをインストールし、update)
##
## $ sudo uname -a
## -----------------------
## linux CF-S10 5.4.0-72-generic

echo "ROSのシミュレータGazeboを起動(初回は5分程度かかる)"
roslaunch turtlebot_gazebo turtlebot_world.launch

# 別の端末を開き、キーボードからロボットを操縦するためのlaunchファイルを起動。
# マウスのカーソルがturtlebot_teleop_key.launchを起動した端末上になければ動かないので注意。
# $ roslaunch turtlebot_teleop keyboard_teleop.launch
