
#!/bin/bash
echo "Do this:" 
echo "cals=( 2015_ch10_files/*.ch10 )"

#Get filenames, trash pref and suff
cals=( 2015_ch10_files/*.ch10 )
#outF=( 2015_ch10_files/*.ch10 )

#for (( i=0; i < ${#cals[@]}; i++ )); do
#    cals[${i}]=${cals[${i}]%%.ch10}
#    cals[${i}]=${cals[${i}]#2015_ch10_files/49003_Dartmouth--}
#
#    cals[i]=${cals[i]%%.ch10}
#    cals[i]=${cals[i]#2015_ch10_files/49003_Dartmouth--}
#done

for (( i=0; i < ${#cals[@]}; i++ )); do

#    outF=${cals[${i}]}
#    outF=${cals[i]}
    
    outF=${cals[i]%%.ch10}
    outF=${outF#2015_ch10_files/49003_Dartmouth--}

    #For i106stat
#    outF=${outF}--i106stat.txt
#    echo "./i106stat ${cals[i]} ${outF} -v"
#    [ ! -e ${outF} ] && echo "Whoa! I would normally run i106stat on this little guy." #./i106stat ${cals[i]} ${outF} -v

    #For idmptmat
#    outF=${outF}--idmptmat--treeView.txt
#    echo "./idmptmat ${cals[i]} ${outF} -v"
#    [ ! -e ${outF} ] && ./idmptmat ${cals[i]} ${outF} -t
#
    #For idmppcm TMATS summary
#     outF=2015_ch10_processed/idmppcm/${outF}--idmppcm--TMATS_summary.txt
#     echo "./idmppcm ${cals[i]} ${outF} -v"
#     [ ! -e ${outF} ] && ./idmppcm ${cals[i]} ${outF} -T


    #For idmptime time and events summary
    # outF=2015_ch10_processed/idmptime/${outF}--idmptime.txt
    # echo "./idmptime ${cals[i]} ${outF} -v"
    # [ ! -e ${outF} ] && ./idmptime ${cals[i]} ${outF} -v

    #For the real thing: idmpanalog
#    mkdir ${outF}
#    outFBLAH=2015_ch10_processed/idmpanalog/${outF}--idmpanalog_chanJUNK.txt
#    echo "./idmpanalog ${cals[i]} ${outF} -T"
#    [ ! -e ${outFBLAH} ] && ./idmpanalog ${cals[i]} ${outFBLAH} && mv *.dmpanalog ${outF}


done
