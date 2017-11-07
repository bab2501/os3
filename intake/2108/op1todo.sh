#!/bin/bash
#Auteur: Dhr. ing. B.A. Blaauwgeers
#Script-Naam: Todolijst 
#Functie: Maak een todo lijstje met de functie toevoegen uitlezen en verw. 

#echo "Please enter your surname?"
#read surname
#echo "We are going to lookup your surname domain with the tld .NL"
#echo "please wait..."

opdr=$1
item=$2

if [ -z $1 ]
	then
	echo "Please use the syntax {add|list|remove} followed by a message"
	exit
else

case $1 in
	add)
		echo $item >> todo.lst
		echo added $item
	;;
	remove)
		sed '/$item/d'
		echo removed $item
	;;
	list)
		cat todo.lst
	;;
	*)

		echo "Wrong command"
	;;
esac

fi 
