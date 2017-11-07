#!/bin/bash
# Author: Dhr. ing. B.A. Blaauwgeers
# Date: 29.04.2016
# Version: v0.1
# C: linuxconfig.org
# T: 6) Reading User Input

red=$(tput setaf 1)
yellow=$(tput setaf 3)
white=$(tput setaf 7)
reset=$(tput sgr0)

echo -e $yellow "Hi Klaas, please type the word: \c " $reset $white
read word
echo $red "The word that klaas entered is: $word" $reset 
echo -e $yellow "Hi Klaas, can you please enter two words, I'd like that, ..?" $reset $white
read word1 word2
echo $red"Here you are...: \"$word1\" \"$word2\"" $reset
echo -e $yellow "How do you feel about Kees?" $reset $white
read
echo $red "you siad $REPLY, I'm glad to hear that!" $reset
echo -e $yellow "what are your favorite colors?" $reset $white
# -a makes read command to readin an array
read -a colors
echo $red "My favorite colors are also ${colors[0]},  ${colors[1]} and ${colors[2]}" $reset
