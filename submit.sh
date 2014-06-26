cd /afs/cern.ch/work/r/rkunnawa/WORK/CMSSW_5_3_8_HI/src
#cmsenv
eval `scramv1 runtime -sh`

cd /afs/cern.ch/work/r/rkunnawa/WORK/CMSSW_5_3_8_HI/src



  echo "root -l -b -q merge_kurt_files_V2.C++"
  echo "First = $FIRST and last file = $LAST"   

root -b > merge_kurt_files${FIRST}.log <<EOF
.x merge_kurt_files_V2.C($FIRST,$LAST);
.q
EOF



echo "Done all jobs!"

#echo "Copying output files to " $destination