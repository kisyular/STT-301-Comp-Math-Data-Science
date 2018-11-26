# This is solutions to Session05
# Author Rellika Kisyula
# Created 18th Sep 2018

# 1 (a). Copy the human genome reference files to your directory (runWget_References.sh)
scp runSalmon_single.sh   kisyular@hpcc.msu.edu:CMSE890Sec303/Session5
scp runSalmon_index.sh   kisyular@hpcc.msu.edu:CMSE890Sec303/Session5
scp  runWget_References.sh   kisyular@hpcc.msu.edu:CMSE890Sec303/Session5

# 1(b) Look through the script and the files
less  runWget_References.sh
less  runSalmon_single.sh
less runSalmon_index.sh

# 1(c) Additional lines to help you submit the job to HPPC qsub
#! /bin/bash
#PBS -o ~/CMSE890Sec303/Session5
#PBS -l walltime=04:00:00,nodes=1:ppn=1,mem=10gb
# cd ~/CMSE890Sec303/Session5
# qstat -f ${PBS_O_JOBID}

# 2(a) Use module spider to look for the Salmon genome mapping software.
module spider Salmon
# salmon/0.5.0 salmon/0.6.0 salmon/0.8.2 salmon/0.9.1

# 2(b) Convert the runSalmon_index.sh to work in your directory.
# I made the following changes

#PBS -o ~/CMSE890Sec303/Session5
#PBS -l walltime=04:00:00,nodes=1:ppn=1,mem=10gb
#cd ~/CMSE890Sec303/Session5
#qstat -f ${PBS_O_JOBID}

# 4 For question 4, I wrote a script based on video tutorial to submit many jobs at once
