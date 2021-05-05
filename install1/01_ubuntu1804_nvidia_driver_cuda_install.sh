#!/bin/bash
# update 2021.04.24

# --------------------------------------------------------
# Ubuntu18.04にNVIDIA Container Toolkitをインストールする
# https://qiita.com/Wisteria30/items/6f1e35e600e93ff2c54b
# --------------------------------------------------------
# HP通りやる。ただしPytorch v1.7.1を使用するため★cuda-11-0と指定★
# URL: https://qiita.com/Wisteria30/items/6f1e35e600e93ff2c54b
# URL: https://medium.com/@exesse/cuda-10-1-installation-on-ubuntu-18-04-lts-d04f89287130
# URL: https://qiita.com/Navier/items/ec0562e42d8c6e2f504a
#
# PytorchとCUDAの対応確認(# CUDA 11.0 > pip install torch==1.7.1+cu110 torchvision==0.8.2+cu110 torchaudio==0.7.2 -f https://download.pytorch.org/whl/torch_stable.html)
# https://pytorch.org/get-started/previous-versions/
#
# TensorFlowとCUDAの対応関係(# tensorflow-2.4.0  CUDA_11.0  cuDNN_8.0)
# https://www.tensorflow.org/install/source?hl=ja#linux
# https://www.tensorflow.org/install/gpu?hl=ja
#
# apt-key proxy: --keyserver-option http-proxy=http://x:y@proxy:port
# https://qiita.com/nmatsui/items/816051fe6445db116e9a

wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-ubuntu1804.pin
sudo mv cuda-ubuntu1804.pin /etc/apt/preferences.d/cuda-repository-pin-600
#sudo apt-key adv --keyserver-option http-proxy=http://x:y@proxy:port --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub
sudo add-apt-repository "deb http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/ /"
sudo apt update
# 自動で合うdriverを入れてくれる
# sudo ubuntu-drivers autoinstallだと435, 以下コマンドだと465のインストールを確認(2021.05.05)
sudo apt -y install cuda-drivers
#sudo apt -y --no-install-recommends cuda-10-2
sudo apt -y --no-install-recommends cuda-11-1
sudo apt -y --no-install-recommends cu

# 以下を.bashrcに追加
# export PATH="/usr/local/cuda/bin:$PATH"
# export LD_LIBRARY_PATH="/usr/local/cuda/lib64:$LD_LIBRARY_PATH"

echo "# CUDA setting" >> ~/.bashrc
echo 'export PATH="/usr/local/cuda/bin:$PATH"' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH="/usr/local/cuda/lib64:$LD_LIBRARY_PATH"' >> ~/.bashrc

# 再起動時画面が黒くなるので、sudo apt update & upgradeを実施
sudo apt update
sudo apt upgrade

# nvidia-driverが正しくインストールしたか再起動で確認
echo "# nvidia-driverが正しくインストールしたか再起動で確認"
echo "$ sudo reboot"
