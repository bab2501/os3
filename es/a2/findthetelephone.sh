#!/bin/bash
#Auteur: Dhr. ing. B.A. Blaauwgeers
#Scriptname: Find a phonenumber from a file or webiste
# The script is NON-recursive, it would not follow links inside the file or web$
# (to test use eg. a consulting website)
#Func: Print all lines that contain an URI from a remote source.

opdr=$1
if [ -z $opdr ]
        then
        echo "What your your information source? website or file?"
        read opdr
else

case $opdr in
        website)
                echo "Enter the URL:"
                read website
                wget --output-document="website.html" $website
                filename=website.html
        ;;
        file)
                echo "Enter the filename, with or without path:"
                read filename
        ;;
        *)
                echo "Wrong command"
                exit
        ;;
esac
echo The phonenumbers we found are:
grep -o -E '[0|+][0-9][0-9][0-9][[0-9][0-9]+....' $filename | grep -v -E '[a-z|$
fi
ep -o -E '[0|+][0-9][0-9][0-9][[0-9][0-9]+....' $filename | grep -v -E '[a-z|A-Z][a-z|A-Z][a-z|A-Z]+' | grep -o -E '[0|+][0-9][0-9][0-9][0-9][0-9][0-9][0-9]+'ep -o -E '[0|+][0-9][0-9][0-9][[0-9][0-9]+....' $filename | grep -v -E '[a-z|A-Z][a-z|A-Z][a-z|A-Z]+' | grep -o -E '[0|+][0-9][0-9][0-9][0-9][0-9][0-9][0-9]+'
fi
