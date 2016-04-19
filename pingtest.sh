#!/bin/bash
echo "Please enter your surname?"
read surname
echo "We are going to lookup your surname domain with the tld .NL"
echo "please wait..."
ping -c 1 -v $surname.nl


