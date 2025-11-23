#!/bin/bash
#practic 1

file=$1

if [[ $file == *.csv ]]; then
    sep=","
else
    sep=$'\t'
fi

first_cols=$(head -1 "$file" | awk -F"$sep" '{print NF}')
awk -F"$sep" -v first="$first_cols" 'NR>1 && NF!=first {print "第 " NR " 行错误"}' "$file"
