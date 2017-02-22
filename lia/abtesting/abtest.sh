#!/bin/bash
clear
echo "The script starts soon."
for i in {1..5}
do
	echo "Round $i"
        echo "=== Round $i ===" >> abresult.txt
	ab -n 100000 -c 100 "http://145.100.106.20/" >> abresult.txt
	sleep 1
done
vim abresult.txt -c "hardcopy > abresult.pdf | q"
echo "The script is finished"
