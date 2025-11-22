#!/bin/bash
#homework 5.2
#QingYuntai

#1.
sed 's/[[:punct:]]//g' text.txt | tr 'A-Z' 'a-z' > cleaned.txt

awk '{for(i=1;i<=NF;i++) c[$i]++} END{for(w in c) print w, c[w]}' cleaned.txt \
    | sort -k2 -nr | head -5 > top5.txt

awk '{print $1": "$2}' top5.txt

for word in $(awk '{print $1}' top5.txt)
do
    curl -s "https://api.dictionaryapi.dev/api/v2/entries/en/$word"
done
