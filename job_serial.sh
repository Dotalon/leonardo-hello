#!/bin/bash
#SBATCH --job-name=hello_world
#SBATCH --partition=lrd_all_serial
#SBATCH --qos=normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:05:00
#SBATCH --output=hello_%j.out
#SBATCH --error=hello_%j.err
# The project account is passed at submit time: sbatch -A <account> job_serial.sh

cd "$SLURM_SUBMIT_DIR"
echo "Started on $(hostname) at $(date)"
python3 hello_world.py
echo "Finished at $(date)"