#!/bin/bash
OUI=$(echo ${1//[:.- ]/} | tr "[a-f]" "[A-F]" | egrep -o "^[0-9A-F]{6}")
grep $OUI lynx -dump http://standards.ieee.org/regauth/oui/oui.txt
