#!/bin/bash
#Auteur: Dhr. ing. B.A. Blaauwgeers
#Script-Naam: MailPing v0.1
#Functie: 
#Bron: https://linuxconfig.org/bash-scripts-to-scan-and-monitor-network

#!/bin/bash 
 
LOG=/tmp/mylog.log 
SECONDS=1800 #elke 1800 seconden = 30min

EMAIL=alexander.blaauwgeers@example.test
 
for i in $@; do 
	echo "$i-UP!" > $LOG.$i 

done 
 
while true; do 
	for i in $@; do 

ping -c 1 $i > /dev/null 
if [ $? -ne 0 ]; then 
	STATUS=$(cat $LOG.$i) 
 		if [ $STATUS != "$i-DOWN!" ]; then 
 			echo "`date`: ping failed, $i host is down!" | 
			mail -s "$i host is down!" $EMAIL 

 		fi 
	echo "$i-DOWN!" > $LOG.$i 

else 
	STATUS=$(cat $LOG.$i)
 		if [ $STATUS != "$i-UP!" ]; then 
 			echo "`date`: ping OK, $i host is up!" | mail -s "$i host is up!" $EMAIL

 		fi 
	echo "$i-UP!" > $LOG.$i 
fi 
done 

sleep $SECONDS 
done
