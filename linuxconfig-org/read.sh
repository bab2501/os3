#!/bin/bash
# Author: Dhr. ing. B.A. Blaauwgeers
# Date: 29.04.2016
# Version: v0.1
# C: linuxconfig.org
# T: 6) Reading User Input

echo -e "Hi Klaas, please type the word: \c "
read word
echo "The word that klaas entered is: $word"
echo -e "Hi Klaas, can you please enter two words, I'd like that, ..?"
read word1 word2
echo "Here you are...: \"$word1\" \"$word2\""
echo -e "How do you feel about Kees?"
read
echo "you siad $REPLY, I'm glad to hear that!"
echo -e "what are your favorite colors?"
# -a makes read command to readin an array
read -a colors
echo "My favorite colors are also ${colors[0]},  ${colors[1]} and ${colors[2]}"
