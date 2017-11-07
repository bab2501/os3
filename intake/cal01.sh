#!/bin/bash
#Auteur: Dhr. ing. B.A. Blaauwgeers
#Scriptname: Calculator v1
#Func: Script to add values and return the result.
echo "Give A to me"
read A
echo "and please give me B also"
read B
C=$(echo $A + $B | bc) #werkt met INT en FLOAT
echo 'so the answer to the question A+B=' $C


