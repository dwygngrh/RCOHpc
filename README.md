# RCOHpc
## Informasi untuk pemakaian HPC untuk aplikasi kelautan

*********************************************************************************************************************  
## Auto load module standard di bashrc  
### instalasi module dimulai *************************************    
#### Perintah ini hanya di berikan sekali saja dan pastikan berada di direktory $HOME  

echo "module load intel/2023.2.0" > .bashrc  
echo "module load mpi/2021.10.0" > .bashrc  
echo "module load earth/netcdf-c/4.9.2" > .bashrc  
echo "module load earth/netcdf-fortran/4.6.1" > .bashrc  
echo "module load earth/miniconda3/24.11.1" > .bashrc

conda init bash  

##### silahkan logout dan login lagi
### instalasi module selesai *************************************   
*********************************************************************************************************************  

## instalasi conda environment untuk python

conda create --name "user_intra" python=3.9    ****** ganti "user_intra" dengan user kita di intra brin  

### Instalasi module sesuai kebutuhan

conda install conda-forge::numpy  
conda install conda-forge::scipy  
conda install conda-forge::matplotlib  
conda install conda-forge::basemap  
conda install conda-forge::netcdf4  
conda install anaconda::pandas  
conda install conda-forge::plotly  
conda install anaconda::seaborn  
conda install anaconda::pywavelets  
conda install conda-forge::gsw  
conda install jupyter  

*********************************************************************************************************************  

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


