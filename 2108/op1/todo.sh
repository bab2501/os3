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
		echo $2 >> todo.lst
		echo added $2
	;;
	remove)
		echo removed $2
	;;
	list)
		cat todo.lst
	;;
	*)
		echo "Wrong command"
	;;
esac

fi 
