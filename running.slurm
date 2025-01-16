#!/bin/bash  
#SBATCH --job-name=roms  
#SBATCH --nodes=1  #default brin maksimal 1 nodes per user  
#SBATCH --ntasks-per-node=64  
#SBATCH --partition=long  
#SBATCH --output=run.out           # Standard output file name  
#SBATCH --error=run.err            # Standard error file name  
#SBATCH --propagate=STACK  
ulimit -s unlimited  

## Contoh command untuk launch run script MPI dengan 64 processor di HPC 
mpirun -np 64 ./Roms

## Contoh command untuk launch python/R command di HPC
#python namascript.py

