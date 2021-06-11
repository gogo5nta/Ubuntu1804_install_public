#!/bin/bash
# update 2021.05.20

# --------------------------------------------------------
# Dockerのインストール (Ubuntu 18.04 LTS)
# https://www.aiprogrammers.net/entry/2020/04/18/164548
#
# NVIDIA container toolkitを使って、dockerのコンテナ上でcudaを動かす(途中まで)
# URL:https://qiita.com/Hiroaki-K4/items/c1be8adba18b9f0b4cef
# --------------------------------------------------------

# 古いdockerを削除
# sudo apt-get remove docker docker-engine docker.io containerd runc

# Dockerをインストール
sudo apt-get update
sudo apt install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD8

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io -y

# 確認(Docker)
sudo docker run hello-world

# 確認(Docker version)
docker -v

# Dockerコマンドをsudoなしで実行する方法
# URL:https://insilico-notebook.com/docker-run-without-sudo/
# URL:https://qiita.com/DQNEO/items/da5df074c48b012152ee
# dockerグループがなければ作る
sudo groupadd docker

# 現行ユーザをdockerグループに所属させる
sudo usermod -aG docker $USER 
newgrp docker 

# dockerデーモンを再起動する (CentOS7の場合)
sudo systemctl restart docker

# test
docker run hello-world 

# docker-composeのインストール
# https://docs.docker.jp/compose/install.html#linux
sudo curl -L https://github.com/docker/compose/releases/download/1.16.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
