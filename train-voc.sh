#! /bin/bash
#SBATCH --account=def-peterdri
#SBATCH --time=10:0:0
#SBATCH --job-name=darknet-v4-voc
#SBATCH --mem=32G
#SBATCH --cpus-per-task=6
#SBATCH --output=sbatch-train-voc.log
#SBATCH --gres=gpu:2

source ~/envs/setup/rfi.sh

# ./darknet detector train cfg/voc.data cfg/yolo-voc.cfg csdarknet53-omega.conv.105
./darknet detector train cfg/voc.data cfg/yolo-voc.cfg backup/yolo-voc_last.weights