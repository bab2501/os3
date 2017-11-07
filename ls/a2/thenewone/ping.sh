#!/bin/bash
#Auteur: Dhr. ing. B.A. Blaauwgeers
#Scriptname: LS Ping to Ireland v1
#Func: Measurement script for the LS lab 2.

#onelineR
sudo ping -D -i 0.000001 145.100.105.131 | while read pong; do echo "$pong"; done >> test03_cm.txt
