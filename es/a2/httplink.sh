#!/bin/bash
#Auteur: Dhr. ing. B.A. Blaauwgeers
#Scriptname: HTTPregex
#Func: Print all lines that contain an URI from a remote source.
echo Please enter an URL of an website? [eg. "www.csszengarden.com"]
read website
wget --output-document="website.html" $website 
grep -o -E 'http[^"]+' website.html

