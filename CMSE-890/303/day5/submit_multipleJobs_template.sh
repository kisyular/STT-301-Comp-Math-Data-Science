#! /bin/bash
#PBS -o ~/CMSE890Sec303/Session5/FastQ_Results
#PBS -l walltime=24:00:00,nodes=1:ppn=8,mem=100gb

cd ~/CMSE890Sec303/Session5/

module load FastQC/0.11.5

base = "Filenames"

fastqc $base'_1.fastq'
