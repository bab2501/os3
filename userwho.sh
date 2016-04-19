#!/bin/bash
# Author: Dhr ing. B.A. Blaauwgeer
# User Who script

#<<< it is better to use the id because the username may have been changed
if [ $(id -u) != 0 ]
	then
	echo "je bent geen root maar: " $(whoami)
else echo "je bent root"
fi

#<<< if you dÃon't 
if [ $(whoami) != "root" ]
        then
        echo "je bent geen root maar: " $(whoami)
else echo "je bent root"
fi

