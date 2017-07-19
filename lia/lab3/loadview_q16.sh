#!/bin/bash
#Dhr. ing. B.A. Blaauwgeers
filename="lia316_$(date +%s).txt"
pdffilename="lia316_$(date +%s).pdf" #for upload wiki
touch $filename
echo "The script starts soon."
for i in {1..50}
do
	echo "Round $i - datetime $(date):" >> $filename
	echo "Round $i"
        curl -s http://blaauwgeerst80-1515960674.eu-west-1.elb.amazonaws.com/ | grep instance >> $filename
	sleep 1
done
echo "see $filename"
vim $filename -c "hardcopy > $pdffilename | q"
echo "The script is finished"
