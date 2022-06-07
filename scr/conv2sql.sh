#!/usr/bin/env bash
#This part is only for running in SLURP at ecmwf
#SBATCH --error=conv.err
#SBATCH --output=conv.out
#SBATCH --job-name=con2sql

# script to run the conversion from vfld and vobs to sqlite format.
if [[ -z $1 ]] ; then 
   echo "Please provide config file"
   echo "Example: ./conv2sql.sh R/config_files/config_example.yml"
   echo "NOTE: provide config file path relative to the local repository, no absolute path"
   exit 1
fi
CONFIG=$1

module load R

cd ../R/pre_processing
./vobs2sql.R -config_file $CONFIG
./vfld2sql.R -config_file $CONFIG
