# RCOHpc
## Informasi untuk pemakaian HPC untuk aplikasi kelautan

Load module standard
module load intel/2023.2.0  
module load mpi/2021.10.0  
module load earth/netcdf-c/4.9.2  
module load earth/netcdf-fortran/4.6.1  
module load earth/miniconda3/24.11.1  

## Script untuk running di slurm. 
#!/bin/bash  
#SBATCH --job-name=roms  
#SBATCH --nodes=1  #default brin maksimal 1 nodes per user  
#SBATCH --ntasks-per-node=64  
#SBATCH --partition=medium-small  
#SBATCH --output=run.out           # Standard output file name  
#SBATCH --error=run.err            # Standard error file name  
#SBATCH --propagate=STACK  
ulimit -s unlimited  

## Contoh command untuk launch run script  
mpirun -np 64 ./Roms

## Slurm command
squeue   # untuk liat job list  
 
Jenis partiton :   
medium-small (3 hari running)  
long  ( 7 hari running)  
medium-large (3 hari running  bisa lebih dari 1 nodes, permintaan khusus)  
short (1 hari running)  


