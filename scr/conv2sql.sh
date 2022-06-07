#!/usr/bin/env bash
#This part is only for running in SLURP at ecmwf
#SBATCH --error=conv.err
#SBATCH --output=conv.out
#SBATCH --job-name=con2sql

# script to run the conversion from vfld and vobs to sqlite format.
if [[ -z $1 ]] &&  [[ -z $2 ]]; then 
   echo "Please provide at least 2 arguments"
   echo "ARG1: start date  ARG2: end date (in format YYYYMMDDHH)"
   echo "Optional ARG3: 0 or 1 (process vobs or not)"
   echo "Optional ARG4: 0 or 1 (process vfld or not)"
   echo "Example: ./conv2sql.sh 2022020100 20220123"
   echo "Example 2: ./conv2sql.sh 2022020100 20220123 0 1 (process vfld only, not vobs)"
   exit 1
else
   SDATE=$1
   EDATE=$2
   VOBS=1
   VFLD=1
   [ ! -z $3 ] && VOBS=$3
   [ ! -z $4 ] && VFLD=$4
fi

module load R
CONFIG=config_examples/config_local.yml

[ $VOBS == 1 ] && ./vobs2sql.R -start_date $SDATE -end_date $EDATE -config_file $CONFIG
[ $VFLD == 1 ] && ./vfld2sql.R -start_date $SDATE -end_date $EDATE -config_file $CONFIG
