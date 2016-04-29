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
	for b in `seq 1 5`; do
		count=$(echo 5 - $b | bc)
		echo "Nog $count seconden slapen"
		sleep 1
	done
}

#for loop from 1/10 all the way up to 10/10
for a in `seq 1 10`; do
	echo "$a/10 to Exit."
	sleep 1
done
echo "exit example"
