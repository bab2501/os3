#!/bin/bash
#Author: Dhr. ing. B.A. Blaauwgeers
# C: linuxconfig.org
# T: 3.1) Global vs. Local variables

#define bash gobal variable
#this variable is global and can be used anywhere in this bash script
VAR="global variable"
function bash {
	#define a local variable
	#this variable is local to this bash function only
	local VAR="local variable"
	echo $VAR
}
echo $VAR
bash
#note the global variable didn't change
# "local""is bash reserved word
echo $VAR
