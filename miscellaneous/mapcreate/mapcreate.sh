#!/bin/bash
#Auteur: Dhr. ing. B.A. Blaauwgeers
#Scriptnaam: Map Maker v0.2.1

mkdir rangedir

for mapidr in {1..200}
do
	dir="/home/klaas/20160419/rangedir/$mapidr"
	mkdir $dir
	if [ $mapidr -gt 100 ]
	then
		chmod 777 $dir
	elif [ $mapidr -gt 50 ]
	then
		chmod 555 $dir
	else chmod 700 $dir
	fi
done
