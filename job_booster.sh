#!/bin/bash
#SBATCH --job-name=hello_gpu
#SBATCH --partition=boost_usr_prod
#SBATCH --qos=boost_qos_dbg
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --gres=gpu:1
#SBATCH --mem=16G
#SBATCH --time=00:05:00
#SBATCH --output=hello_gpu_%j.out
#SBATCH --error=hello_gpu_%j.err

cd "$SLURM_SUBMIT_DIR"
echo "Started on $(hostname) at $(date)"
nvidia-smi
python3 hello_world.py
echo "Finished at $(date)"