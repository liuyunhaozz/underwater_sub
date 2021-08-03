#!/bin/bash

cd ~/underwater_sub/data
unzip -d . test-B-image.zip 
cd ..
mkdir results
mkdir submit

conda create -n my_mmcv python=3.7 -y
conda activate my_mmcv
conda install cython
conda install pytorch==1.6.0 torchvision==0.7.0 cudatoolkit=10.1 -c pytorch

wget https://download.openmmlab.com/mmcv/dist/1.1.5/torch1.6.0/cu101/mmcv_full-1.1.5%2Btorch1.6.0%2Bcu101-cp37-cp37m-manylinux1_x86_64.whl
pip install https://download.openmmlab.com/mmcv/dist/1.1.5/torch1.6.0/cu101/mmcv_full-1.1.5%2Btorch1.6.0%2Bcu101-cp37-cp37m-manylinux1_x86_64.whl
pip install albumentations
pip install tqdm
pip install -r requirements/build.txt
pip install -v -e .
