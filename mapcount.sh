#!/bin/bash
#Auteur: Dhr. ing. B.A. Blaauwgeers
#Script-Naam: Mapcount v0.1
#Functie: count a map

echo "Please enter path?"
read path
mapcount=$(ls -l $path | | wc -l)
(mapcount -1)
echo $mapcount


