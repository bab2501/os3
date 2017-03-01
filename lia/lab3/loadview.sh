#!/bin/bash
#Dhr. ing. B.A. Blaauwgeers
filename="lia39_$(date +%s).txt"
pdffilename="lia39_$(date +%s).pdf" #for upload wiki
touch $filename
echo "The script starts soon."
for i in {1..10}
do
	echo "Round $i - datetime $(date):" >> $filename
	echo "Round $i"
        curl -s http://blaauwgeers123-985675008.eu-west-1.elb.amazonaws.com | grep instance >> $filename
	sleep 1
	echo "."
        sleep 1 
        echo "."
        sleep 1 
        echo "."
        sleep 1 
        echo "."
        sleep 1 
        echo "."
        sleep 1 
        echo "."
done
echo "see $filename"
vim $filename -c "hardcopy > $pdffilename | q"
echo "The script is finished"
