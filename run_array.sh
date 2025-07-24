#!/bin/bash
# Example submission script for 'hello world' program

# This specifies type of node job will use #SBATCH --nodes=1
#SBATCH --partition=defq

# This specifies that this is an array job with 10 tasks
#SBATCH --array=1-10

# This specifies type of nodes job will use
#SBATCH --nodes=1

# This specifies job uses 1 core
#SBATCH --ntasks-per-node=1

# This specifies maximum memory use will be 2 gigabytes
#SBATCH --mem=2g

# This specifies job will last no longer than 1 hour
#SBATCH --time=1:00:00

# Put slurm outputs in a logs directory to keep working directory clean
#SBATCH -o ./logs/output-%A_%a.out # STDOUT

#below use Linux commands, which will run on compute node. This needs to be specific to your #application

TASK=${SLURM_ARRAY_TASK_ID}

echo "Running Job $TASK on `hostname`"
cd ${SLURM_SUBMIT_DIR}

python -u array_example.py $TASK

echo "Finished job now"