#!/bin/bash
clear
echo "The script starts soon."
for i in {1..5}
do
	echo "Round $i"
        echo "<h1>Round $i</hi>" >> result.html
	ab -n 100000 -c 100 -w "http://145.100.106.20/" >> result.html
	echo "<hr />" >> result.html
	sleep 1
done
echo "The script is finished"
