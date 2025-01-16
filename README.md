# RCOHpc
## Informasi penggunaan HPC untuk aplikasi kelautan

*********************************************************************************************************************  
### instalasi module autoload di bashrc *************************************    
#### Perintah ini hanya di berikan sekali saja dan pastikan berada di direktory $HOME  

echo "module load intel/2023.2.0" > .bashrc  
echo "module load mpi/2021.10.0" > .bashrc  
echo "module load earth/netcdf-c/4.9.2" > .bashrc  
echo "module load earth/netcdf-fortran/4.6.1" > .bashrc  
echo "module load earth/miniconda3/24.7.1" > .bashrc

conda init bash  

##### silahkan logout dan login lagi
### instalasi module selesai, python sudah terinstall*************************************   
*********************************************************************************************************************  

## perintah untuk running di slurm. 
Download file running.slurm di reposiroty ini dan silahkan sesuaikan dengan kebutuhan  
perintah submit job ke HPC sebagai berikut :  

sbatch running.slurm >> log_running.out 2>&1  

*********************************************************************************************************************  

## Perintah untuk melihat status Job kita di HPC
squeue   

*********************************************************************************************************************  

## Informasi jenis partiton :   
medium-small (3 hari running)  
long  ( 7 hari running)  
medium-large (3 hari running  bisa lebih dari 1 nodes, permintaan khusus)  
short (1 hari running)  

*********************************************************************************************************************  

###### Jika ada kesulitan bs email ke dwiy008@brin.go.id


