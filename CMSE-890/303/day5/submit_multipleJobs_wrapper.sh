#! /bin/bash
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
        sed 's/Filenames/'${base[$index]}'/g' submit_diff_files_once.sh > 'submit_diff_'${base[$index]}'.sh'
	echo qsub 'submit_diff_'${base[$index]}'.sh'
done
