#!/bin/bash
#Auteur: Dhr. ing. B.A. Blaauwgeers
#Script-Naam: Mapcount v0.1
#Functie: count a map

echo "Please enter path?"
path=/root/scripting
mapcount=$(ls -l $path | wc -l)
((mapcount = mapcount - 1))
echo $mapcount

for


