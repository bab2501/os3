#!/bin/bash
#Auteur: Dhr. ing. B.A. Blaauwgeers
#Script-Naam: nslookuptest v0.2.5
#Functie: Controleer of de achternaam van de gebruiker is geregistreerd in de .nl dns-zone op basis van NSLOOKUP

echo "Please enter your surname?"
read surname
echo "We are going to lookup your surname domain with the tld .NL"
echo "please wait..."
nslookup $surname.nl
result=$?
if [ $result -eq 0 ]
then
	echo "The domain $surname .nl is registered and we are able to nslookup"
elif [ $result -eq 1 ]
then
	echo "The domain $surname .nl might be free or inactive according to nslookup"
fi


