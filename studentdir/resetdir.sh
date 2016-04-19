#!/bin/bash
#Auteur: Dhr ing. B.A. Blaauwgeers
# Maak mappen voor studenten

#Remove the mess
rm -rf /home/klaas/os3/studentdir/share

#Create share
mkdir /home/klaas/os3/studentdir/share
chmod 700 /home/klaas/os3/studentdir/share

for studentid in {2000..2050}
do
	#set var
	studentdir="/home/klaas/os3/studentdir/share/$studentid"
	mkdir $studentdir
	#cd $studentdir
	if [ $studentid -gt 2010 ]
	then
		cp -r /home/klaas/os3/studentdir/vak/math $studentdir
	#cd ..
	fi
done
