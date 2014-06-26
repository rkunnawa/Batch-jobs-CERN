#!/bin/bash
cd /afs/cern.ch/work/r/rkunnawa/WORK/CMSSW_5_3_8_HI/src
#cmsenv
eval `scramv1 runtime -sh`

cd /afs/cern.ch/work/r/rkunnawa/WORK/CMSSW_5_3_8_HI/src

nJobs=20 
i=0
while [ $i -le $nJobs ];
do 
   let "start=i*500"
   let "end=(i+1)*500"
  export FIRST=$start  
  export LAST=$end 
  echo "First = $FIRST and last file = $LAST"   
  bsub -R "pool>5000" -M 3000000 -q 1nd -J merge_job_${i} < /afs/cern.ch/work/r/rkunnawa/WORK/CMSSW_5_3_8_HI/src/submit.sh
  let "i++"
done

echo "submit all jobs!"

#echo "Copying output files to " $destination