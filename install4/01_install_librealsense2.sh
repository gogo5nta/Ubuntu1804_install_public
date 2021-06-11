#!/bin/bash
# update 2021.06.11

#=============================================================
#UbuntuでIntel Realsense D415を使えるようにするまで(ROSあり・なし両方)
#=============================================================
#   https://qiita.com/kei_mo/items/c0387b7d277948451881


# 公開鍵を登録
echo "公開鍵を登録"

#一般：
sudo apt-key adv --keyserver keys.gnupg.net --recv-key C8B3A55A6F3EFCDE || sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-key C8B3A55A6F3EFCDE

#Proxy内(会社)
#sudo -E apt-key adv --keyserver keys.gnupg.net --recv-key C8B3A55A6F3EFCDE || sudo -E apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-key C8B3A55A6F3EFCDE


# サーバーをレポジトリリストに登録
echo "サーバーをレポジトリリストに登録(Ubuntu18)"
# ubuntu18
sudo add-apt-repository "deb http://realsense-hw-public.s3.amazonaws.com/Debian/apt-repo bionic main" -u

# ubuntu16
# sudo add-apt-repository "deb http://realsense-hw-public.s3.amazonaws.com/Debian/apt-repo xenial main" -u


# ライブラリ(liblealsense2)をインストール
echo "ライブラリ(liblealsense2)をインストール"
sudo apt-get -y install librealsense2-dkms
sudo apt-get -y install librealsense2-utils

#開発者用ツール、デバッガツールをインストール(オプション。いれなくて問題ない)
#sudo apt-get -y install librealsense2-dev
#sudo apt-get -y install librealsense2-dbg


#パッケージのアップグレード
#　参考：Ubuntu18.04: RealSense D435iをROS Melodicで使う
#　　　　https://demura.net/robot/16525.html
#
#以下の手順でアップグレードする。ここでは上でインストールしたパッケージだけアップグレードする。
#アップグレード可能なすべてのパッケージをアップグレードすると稀に動かなくなるパッケージがある
#のでこの方法はお勧め。

echo "パッケージのアップグレード"
sudo apt update
#ライブラリ
sudo apt --only-upgrade -y install librealsense2-utils librealsense2-dkms

#ライブラリ+デバッグ(オプション)
#sudo apt --only-upgrade -y install librealsense2-utils librealsense2-dkms librealsense2-dev librealsense2-dbg 


#PCを一度再起動する事
echo "PCを一度再起動する事"
echo "sudo reboot"


#動作確認(realsenseをつなげ、以下のコマンドによりrealsense viewerを立ち上げ)
#reslsense-viewer
