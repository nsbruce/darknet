#! /bin/bash
#SBATCH --account=def-peterdri
#SBATCH --time=5:0:0
#SBATCH --job-name=darknet-test-rfinder
#SBATCH --mem=32G
#SBATCH --cpus-per-task=6
#SBATCH --output=sbatch-test-rfinder.log
#SBATCH --gres=gpu:2

source ~/envs/setup/darknet.sh


# ./darknet detector test cfg/rfinder.data cfg/yolov4-rfinder.cfg backup/yolov4-rfinder_last.weights -thresh 0.25 -dont_show -save_labels < /home/nsbruce/RFI/spawc21-bounding-boxes/yolo-test-square/test.txt 

./darknet detector test cfg/rfinder.data cfg/yolov4-rfinder.cfg backup/yolov4-rfinder_last.weights -ext_output -dont_show -out result.json < /home/nsbruce/RFI/spawc21-bounding-boxes/yolo-test-square/test.txt 