#!/bin/bash
# Author: Dhr ing. B.A. Blaauwgeers
# Name: Bash Script to test
# If file test1 exists then echo x

if [ -f "$HOME/20160415/shellscripting/test1" ]
	then
	echo This script found a file named test1
elif [ -f "$HOME/20160415/shellscripting/test2" ]
	then
	echo This script couldn\'t find test1 but we found test2
else
	echo I am sorry. Test1 neighter test2 exist.
fi
