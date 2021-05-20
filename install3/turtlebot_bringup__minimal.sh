#!/bin/bash
# update 2021.05.20

## --- キーボードによる制御 ---
#ノートパソコンとKobukiを接続

echo "ターミナル1"
source ~/catkin_ws/devel/setup.bash
roslaunch turtlebot_bringup minimal.launch
