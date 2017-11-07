#!/bin/bash
#Auteur: Dhr. ing. B.A. Blaauwgeers
#Script-Naam: Userinfo 
#Functie: uitlezen userinfo 

fullname=grep systemd-net /etc/passwd | cut --delimiter=: --fields=5 grep systemd-net /etc/passwd | cut --delimiter=: --fields=5
usermaps=$(du -sh ~)

echo Hallo $fullname
echo Mapgrote $usermaps


