#!/bin/bash
# update 2021.05.20

echo "ターミナル2"
source ~/catkin_ws/devel/setup.bash
roslaunch turtlebot_teleop  keyboard_teleop.launch

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
