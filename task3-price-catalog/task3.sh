#!/bin/bash
#Homework5.3
#QingYuntai

#1
awk -F',' 'NR>1 { cost=$4*$5; total[$3]+=cost } END { for(c in total) print c, total[c] }' products.csv \
    | sort -k2 -nr

#2
sed '/,0$/d' products.csv > available_products.csv

#3
tail -n +2 available_products.csv | awk -F',' '$4 > 100 {print $2}'
