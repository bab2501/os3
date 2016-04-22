#!/bin/bash
#Auteur: Dhr. ing. B.A. Blaauwgeers
#Script-Naam: Pingtest v0.2.3
#Functie: Controleer of de achternaam van de gebruiker is geregistreerd in de .nl dns-zone op basis van PING

echo "Please enter your surname?"
read surname
echo "We are going to lookup your surname domain with the tld .NL"
echo "please wait..."
ping -c 1 -v $surname.nl
result=$?
if [ $result -eq 0 ]
then
	echo "The domain $surname .nl is registered and we are able to ping"
elif [ $result -eq 1 ]
then
	echo "The domain $surname .nl is registered but we are unable to ping"
else echo "We are unable to ping $surname .nl so it might be free"
fi


