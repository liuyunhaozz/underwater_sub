#!/bin/bash
conda activate my_mmcv
cd ~/underwater_sub
chmod +x tools/dist_test.sh
./tools/dist_test.sh configs/final.py data/final_0803.pth 1 --format-only --eval-options "jsonfile_prefix=./results/testB"
python tools/process_data/json2submit.py
