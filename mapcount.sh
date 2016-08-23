#!/bin/bash
#Auteur: Dhr. ing. B.A. Blaauwgeers
#Script-Naam: Mapcount v0.1
#Functie: count a map

echo "Please enter path?"
path=/root/scripting/os3
echo $path
mapcount=$(ls -l $path | wc -l)
((mapcount = mapcount - 1))
echo $mapcount

for q in {a..r}
do
mapcountd=$(ls -l1 $path | grep -c ^$q)
((mapcountd = mapcountd - 1))
echo $q : $mapcountd
done

