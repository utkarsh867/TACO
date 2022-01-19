#!/bin/bash

pip install git+https://github.com/philferriere/cocoapi.git
python download.py

cd detector && python split_dataset.py --dataset_dir ../data && python3 -W ignore detector.py train --model=coco --dataset=../data --class_map=./taco_config/map_10.csv --round 0
