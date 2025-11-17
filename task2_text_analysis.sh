#!/bin/bash
#homework5.2_QingYuntai

# Task 1
sed 's/[^a-zA-Z ]//g' text.txt | tr 'A-Z' 'a-z' > cleaned.txt

# Task 2
awk '{for(i=1;i<=NF;i++) count[$i]++} END {for(word in count) print word, count[word]}' cleaned.txt | sort -k2 -nr | head -5 > top_words.txt

# Task 3
for word in $(awk '{print $1}' top_words.txt)
do
    curl -s "https://api.dictionaryapi.dev/api/v2/entries/en/$word" | grep -o '"definition":"[^"]*"' | head -1
done > definitions.txt
