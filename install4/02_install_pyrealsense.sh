#!/bin/bash
# update 2021.06.11


# �s�����Ă��郉�C�u������pip�ŃC���X�g�[���Brequirements.txt���Q��
#�@�Q�l�Fhttps://qiita.com/sakusaku12/items/21083c73c8afa4f6c78d
#�@�@�@�@https://note.nkmk.me/python-pip-install-requirements/

# python install
sudo apt -y install python python-pip

# pip update
pip install --upgrade pip setuptools

# pip�ňꊇ���\�z
pip install -r requirements.txt
