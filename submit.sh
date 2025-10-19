#!/bin/bash -l
#SBATCH --job-name=optimize_hyperpara
#SBATCH -o ./%x.%j.out
#SBATCH -e ./%x.%j.err
#SBATCH --output=log.o%j
#SBATCH --partition=gpu
#SBATCH --nodes=1
#SBATCH --tasks-per-node=1
#SBATCH --gres=gpu:2
#SBATCH --mem=90G
#SBATCH --time=48:00:00
#SBATCH --export=NONE
#SBATCH --mail-type=NONE
#SBATCH --no-requeue

export CUDA_VISIBLE_DEVICES="0"
module load python/conda-python/3.7
module load compiler/cuda/11.2
conda activate openmm
python HG.py --case restart

# make it executable: chmod +x submit.sh

