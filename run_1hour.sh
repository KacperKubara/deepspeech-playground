#!/bin/bash
#SBATCH --time=30:00:00
#SBATCH -p gpu
#SBATCH --gres=gpu:1
#SBATCH --mail-type=ALL
#SBATCH --mail-user=kjk1u17@soton.ac.uk

source activate deepspeech-gpu 
deepspeech --model deepspeech-0.9.3-models.pbmm --scorer deepspeech-0.9.3-models.scorer --audio audio/1hour.wav