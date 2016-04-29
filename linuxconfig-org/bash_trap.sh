#!/bin/bash
# Author: Dhr. ing. B.A. Blaauwgeers
# Date: 29.04.2016
# Version: v0.1
# C: linuxconfig.org
# T: 7) Bash trap command

# bash trap command
trap bashtrap INT

# bash screen clear command
clear;

# bash prints message => executing trap subrutine

bashtrap()
{
	echo "CTRL+C Detected !... executing bash trap!"
	echo "Nog 10 seconden slapen"
        sleep 1
        echo "Nog 9 seconden slapen"
        sleep 1
        echo "Nog 8 seconden slapen"
        sleep 1
        echo "Nog 7 seconden slapen"
        sleep 1
        echo "Nog 6 seconden slapen"
        sleep 1
        echo "Nog 5 seconden slapen"
        sleep 1
        echo "Nog 4 seconden slapen"
        sleep 1
        echo "Nog 3 seconden slapen"
        sleep 1
        echo "Nog 2 seconden slapen"
        sleep 1
        echo "Nog 1 seconden slapen"
        sleep 1
}

#for loop from 1/10 all the way up to 10/10
for a in `seq 1 10`; do
	echo "$a/10 to Exit."
	sleep 1
done
echo "exit example"
