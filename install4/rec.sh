#!/bin/bash
# update 2021.06.11

## --- realsense SR305��^�� ---

echo "start rec realsense SR305"
echo "END: windows���[esc]"
python realsense_recorder_SR305.py --record_imgs --output_folder ./data

#$ python realsense_recorder_SR305.py --record_imgs --output_folder ./data
#
# ./data�Ɉȉ������������
#�@�@�Ergb�t�H���_
#�@�@�Edepth�t�H���_
#�@�@�Ergb.txt
#�@�@�Edepth.txt
#�@�@�Ecamera_intrinsic.json
