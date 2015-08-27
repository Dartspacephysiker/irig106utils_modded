#!/bin/bash

#2015/08/27
#The works: i106stat, idmptmat, idmppcm TMATS summary, idmptime

#STRIPPED=${1:-the_works}
FILE=${1}
STRIPPED=${FILE%%.dat}
STRIPPED=${STRIPPED%%.ch10}

echo "Doing the works on ${FILE}"

#For i106stat
outF=${STRIPPED}--i106stat.txt
echo "./i106stat ${FILE} ${outF} -v"
[ ! -e ${outF} ] && ./i106stat ${FILE} ${outF} -v # echo "Whoa! I would normally run i106stat on this little guy."

#For idmptmat
outF=${STRIPPED}--idmptmat.txt
echo "./idmptmat ${FILE} ${outF}"
[ ! -e ${outF} ] && ./idmptmat ${FILE} ${outF}

#For idmptmat--Tree View
outF=${STRIPPED}--idmptmat--treeView.txt
echo "./idmptmat ${FILE} ${outF} -t"
[ ! -e ${outF} ] && ./idmptmat ${FILE} ${outF} -t

#For idmppcm TMATS summary
outF=${STRIPPED}--idmppcm--TMATS_summary.txt
echo "./idmppcm ${FILE} ${outF} -T"
[ ! -e ${outF} ] && ./idmppcm ${FILE} ${outF} -T

#For idmptime time and events summary
outF=${STRIPPED}--idmptime.txt
echo "./idmptime ${FILE} ${outF} -v"
[ ! -e ${outF} ] && ./idmptime ${FILE} ${outF} -v

echo "Done with the WORKS"
