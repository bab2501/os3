#!/bin/bash
#Auteur: Dhr. ing. B.A. Blaauwgeers
#Script-Naam: Bash Color change v0.1
#Functie: Dit script kleurt de BASH

magenta=$(tput setaf 5)
blue=$(tput setaf 4)
green=$(tput setaf 2)
cyan=$(tput setaf 6)
reset=$(tput sgr0)
export PS1='[\[$green\]\u\[$reset\]@\[$blue\]\h\[$reset\]:\[$cyan\]\w\[$reset\]]\\$ '
echo Whoopie, you are colorfull!!!
