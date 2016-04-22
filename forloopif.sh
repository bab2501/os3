#!/bin/bash
#Auteur: Dhr. ing. B.A. Blaauwgeers
#Datum: 22.04.2016
#Scriptname: forloopif v1
#Func: Script without a function

if [ $UID > 0]; then; echo "01: Always true"; fi
if [[ $UID > 0 ]]; then; echo "02: You are not root"; fi
if [ $UID -eq 0 ]; then; echo "03: You are root"; fi
if [ $(id -u) > 0 ]; then; echo "04: Always true"; fi
if [ $(id -u) -eq ]; then; echo "05: You are root"; fi
if [ $(id -u) -gt ]; then; echo "06: You aren't root"; fi
