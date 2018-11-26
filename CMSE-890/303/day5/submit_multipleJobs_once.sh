#! /bin/bash
#PBS -o ~/CMSE890Sec303/Session5/FastQ_Results
#PBS -l walltime=24:00:00,nodes=1:ppn=8,mem=100gb

cd ~/CMSE890Sec303/Session5/

module load FastQC/0.11.5

declare base

base[1] = 'SRR2012208'
base[2] = 'SRR2012209'
base[3] = 'SRR2012627'
base[4] = 'SRR2014228'
base[5] = 'SRR2014229'
base[6] = 'SRR2014231'
base[7] = 'SRR2014232'
base[8] = 'SRR2014233'
base[9] = 'SRR2014234'
base[10] = 'SRR2014235'

for index in {1..10}
do
	fastqc ${base[index]}'_1.fastq.gz'
	fastqc ${base[index]}'_2.fastq.gz'
done
