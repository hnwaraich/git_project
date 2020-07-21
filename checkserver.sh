#!/bin/bash

date
cat /root/serverlist.txt | while read output
do
    ping -c 1 "$output" > /dev/null
    if [ $? -eq 0 ] ; then
    echo "Server is up"
    else
    echo "Server is down"
    fi
done
