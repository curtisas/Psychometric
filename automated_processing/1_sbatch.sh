#!/bin/bash
#--------------------------------------------------------------------------------
#  SBATCH CONFIG
#--------------------------------------------------------------------------------
#SBATCH --job-name=1_convert_dicom    # name for the job
#SBATCH --cpus-per-task=1             # number of cores
#SBATCH --mem=4G                      # total memory
#SBATCH --time 0-00:15                # time limit in the form days-hours:minutes
#SBATCH --mail-user=mizzzousrl@gmail.com  # email address for notifications
#SBATCH --mail-type=END,FAIL

#SBATCH --partition General           # max of 1 node and 2 hours; use `Lewis` for larger jobs
#--------------------------------------------------------------------------------

echo "### Starting at: $(date) ###"

## Module Commands

## Run the matlab script
SCRIPT='1_convert_dicom.sh'
srun bash ${SCRIPT}

echo "### Ending at: $(date) ###

