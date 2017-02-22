#!/bin/bash
clear
echo "The script starts now."
for i in {1..5}
do
        echo "$i Write" >> result.txt
        dd if=/dev/zero of=/test bs=1024 count=102400 2>> result.txt
        sh -c "sync && echo 3 > /proc/sys/vm/drop_caches"
        echo "$i Read" >> result.txt
        dd if=/test of=/dev/null bs=1024 2>> result.txt
        rm -rf /test
done
echo "The script is finished"
