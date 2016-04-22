#!/bin/bash
# Author: Dhr ing. B.A. Blaauwgeer
# User Who script

cat /etc/passwd | awk -F: '{ print $1 ":" $3  }' 
