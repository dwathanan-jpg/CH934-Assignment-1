#!/bin/bash

#SBATCH --job-name=gaussian_4core
#SBATCH --nodes=1
#SBATCH --partition=teaching
#SBATCH --account=teaching
#SBATCH --cpus-per-task=4
#SBATCH --mem=8G
#SBATCH --time=01:00:00
#SBATCH --output=%x_%j.out
#SBATCH --error=%x_%j.err

module purge
module load gaussian/g16
/opt/software/scripts/job_prologue.sh
export GAUSS_SCRDIR=$SLURM_SUBMIT_DIR

g16 Molecule_ANTCEN.com
g16 Molecule_PENCEN.com
g16 Molecule_TETCEN.com

/opt/software/scripts/job_epilogue.sh
