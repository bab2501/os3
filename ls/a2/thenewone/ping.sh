#!/bin/bash
#Auteur: Dhr. ing. B.A. Blaauwgeers
#Scriptname: LS Ping to Ireland v2
#Func: Measurement script for the LS lab 2.
# v1: version used for cold
# v2: added fast rename

#onelineR
filename=$1
sudo ping -D -i 0.000001 145.100.105.131 | while read pong; do echo "$pong"; done >> $filename

