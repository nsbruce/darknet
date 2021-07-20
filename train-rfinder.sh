#! /bin/bash
#SBATCH --account=def-peterdri
#SBATCH --time=10:0:0
#SBATCH --job-name=darknet-rfinder
#SBATCH --mem=32G
#SBATCH --cpus-per-task=6
#SBATCH --output=sbatch-train-rfinder.log
#SBATCH --gres=gpu:2

source ~/envs/setup/darknet.sh

./darknet detector train cfg/rfinder.data cfg/yolov4-rfinder.cfg yolov4.conv.137 -dont_show
# ./darknet detector train cfg/rfinder.data cfg/yolov4-rfinder.cfg backup/yolov4-rfinder_last.weights