#!/bin/bash -l

#SBATCH --account=pawsey0001
#SBATCH --partition=gpuq
#SBATCH --constraint=tesla
#SBATCH --gres=gpu:1
#SBATCH --time=00:15:00
#SBATCH --export=NONE

module load pgi/18.3

cmd='time -p srun --export=all -n 1'

${cmd} pgprof --cpu-profiling-scope instruction --cpu-profiling-mode top-down ./heat_eq_serial

