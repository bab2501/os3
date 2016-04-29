#!/bin/bash
#Auteur: Dhr. ing. B.A. Blaauwgeers
#Script-Naam: Bash Color change v0.1.1
#Functie: Dit script kleurt de BASH

#Ref: http://ss64.com/bash/tput.html
#Ref: http://ss64.com/bash/syntax-prompt.html

magenta=$(tput setaf 5)
blue=$(tput setaf 4)
green=$(tput setaf 2)
cyan=$(tput setaf 6)
red=$(tput setaf 1)
reset=$(tput sgr0)

echo $green 'Dit script moet worden uitgevoerd via source scriptnaam.sh' $reset

unset PS1
export PS1='[\[$green\]\u\[$reset\]@\[$red\]\h\[$reset\]:\[$cyan\]\w\[$reset\]]\\$ '
echo Whoopie, you are colorfull!!!
