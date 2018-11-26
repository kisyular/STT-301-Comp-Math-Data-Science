#! /bin/bash
#PBS -o /mnt/scratch/ablackpz/CMSE890303/alignment_salmon
#PBS -l walltime=04:00:00,nodes=1:ppn=1,mem=10gb

cd /mnt/scratch/ablackpz/CMSE890303/alignment_salmon

module swap GNU GNU/4.8.2
module load salmon/0.8.2

salmon index -t /mnt/scratch/ablackpz/CMSE890303/Homo_sapiens.GRCh38.cdna.all.fa -i Homo_sapiens.GRCh38.cdna.all_index
