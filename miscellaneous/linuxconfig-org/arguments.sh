#!/bin/bash
# Author: Dhr. ing. B.A. Blaauwgeers
# Date: 29.04.2016
# Version: v0.1
# C: linuxconfig.org
# T: 4) Passing arguments to the bash script

echo $1 $2 $3 ' -> echo $1 $2 $3'

# We can also store arguments from the bash command line in a array
args=("$@")

# echo arguments to shell
echo ${args[0]} ${args[1]} ${args[2]} ' -> args=("$@"); echo ${args[0]} ${args[1]} ${args[2]} '

#use $@ to print out all arguments at once
echo $@  '-> echo $@'

#use $# variable to print out the number of arguments passed to the bash script
echo Number of arguments passed: $#  ' ->  Number of arguments passed: $#'


