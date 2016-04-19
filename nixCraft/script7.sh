#!/bin/bash
#Auteur: Dhr. ing. B.A. Blaauwgeers
#Script nr 7: Bash for loop explicit file list syntax

for file in *.zip
do 
	echo "$(date) : stripon" >> "$file"
done

