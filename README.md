# RCOHpc
## Informasi untuk pemakaian HPC untuk aplikasi kelautan

###Load module standard  

module load intel/2023.2.0  
module load mpi/2021.10.0  
module load earth/netcdf-c/4.9.2  
module load earth/netcdf-fortran/4.6.1  
module load earth/miniconda3/24.11.1  

## perintah untuk running di slurm. 
Download file running.slurm di reposiroty ini dan silahkan sesuaikan dengan kebutuhan  
perintah submit job ke HPC sebagai berikut :  

sbatch running.slurm >> log_running.out 2>&1  

## Perintah untuk melihat status Job kita di HPC
squeue   
 
## Informasi jenis partiton :   
medium-small (3 hari running)  
long  ( 7 hari running)  
medium-large (3 hari running  bisa lebih dari 1 nodes, permintaan khusus)  
short (1 hari running)  


## Jika ada kesulitan bs email ke dwiy008@brin.go.id


