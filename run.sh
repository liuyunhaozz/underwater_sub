source activate
conda activate my_mmcv
cd /userhome/underwater_sub
python ./tools/process_data/generate_testB_json.py
python ./tools/main_test.py configs/final.py final_0803.pth --format-only --eval-options "jsonfile_prefix=./results/testB"
python tools/process_data/json2submit.py
