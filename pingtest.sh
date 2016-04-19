#!/bin/bash
#Auteur: Dhr. ing. B.A. Blaauwgeers
#Script-Naam: Pingtest v0.2.1
#Functie: Controleer of de achternaam van de gebruiker is geregistreerd in de .nl dns-zone op basis van PING

echo "Please enter your surname?"
read surname
echo "We are going to lookup your surname domain with the tld .NL"
echo "please wait..."
ping -c 1 -v $surname.nl
result=$?
if [ $result -eq 0 ]
then
	echo 0
elif [ $result -eq 1 ]
then
	echo 1
else echo 55
fi


