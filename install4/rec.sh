#!/bin/bash
# update 2021.06.11

## --- realsense SR305を録画 ---

echo "start rec realsense SR305"
echo "END: windows上で[esc]"
python realsense_recorder_SR305.py --record_imgs --output_folder ./data

#$ python realsense_recorder_SR305.py --record_imgs --output_folder ./data
#
# ./dataに以下が生成される
#　　・rgbフォルダ
#　　・depthフォルダ
#　　・rgb.txt
#　　・depth.txt
#　　・camera_intrinsic.json
