#! /bin/bash
#PBS -o /mnt/scratch/ablackpz/CMSE890303/alignment_salmon
#PBS -l walltime=04:00:00,nodes=1:ppn=8,mem=80gb

cd /mnt/scratch/ablackpz/CMSE890303/alignment_salmon

module swap GNU GNU/4.8.2
module load salmon/0.8.2

salmon quant -i Homo_sapiens.GRCh38.cdna.all_index -l A -1 /mnt/research/CMSE-bioinformatics/week3/fastq/SRR2012209_1.fastq.gz -2 /mnt/research/CMSE-bioinformatics/week3/fastq/SRR2012209_2.fastq.gz -p 8 -o /mnt/scratch/ablackpz/CMSE890303/alignment_salmon/quants/SRR2012209
