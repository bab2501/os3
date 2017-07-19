#!/bin/bash
#Dhr. ing. B.A. Blaauwgeers
filename="lia317_$(date +%s).txt"
pdffilename="lia317_$(date +%s).pdf" #for upload wiki
touch $filename
echo "The script starts soon."
for i in {1..50}
do
	echo "Round $i"
        timeo=$(curl -s -w %{time_total}\\n -o koop.html http://blaauwgeersT80-1515960674.eu-west-1.elb.amazonaws.com/)
	echo "$i $(grep instance koop.html | grep -o -e '#...................') $timeo" >> $filename
	sleep 1
done
echo "Stage 1 finished"

ronde=0;
tot=0; 

for i in $( awk '{ print $3; }' $filename )
   do 
     tot=$(echo $tot+$i | bc )
     ((ronde++))
   done
echo "avg:" >> $filename
echo "scale=3; $tot / $ronde" | bc >> $filename
echo "Stage 2 finished"
echo "see $filename"
vim $filename -c "hardcopy > $pdffilename | q"
echo "The script is finished"
