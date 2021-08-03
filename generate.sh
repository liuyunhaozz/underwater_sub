#!/bin/bash
conda activate mmcv
cd ~/waterdetection
chmod +x tools/dist_test.sh
./tools/dist_test.sh configs/final.py work_dirs/final/epoch_24.pth 8 --format-only --eval-options "jsonfile_prefix=./results/testB"
python tools/process_data/json2submit.py