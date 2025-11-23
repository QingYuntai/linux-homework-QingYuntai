#!/bin/bash
#5.2
#QingYuntai

#1
sed 's/{//g; s/}//g; s/"//g; s/ //g; s/,/\n/g; s/:/=/' config.json > temp.txt
#2
awk '{print "CONF_" $0}' temp.txt > final.txt
#3
while IFS= read -r line
do
    export "$line"
done < final.txt
