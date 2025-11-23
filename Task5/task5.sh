#!/bin/bash
#practic 5

file=$1
threshold=$2

awk -v th="$threshold" '$2 > th {print $1, $2, $3}' "$file" | sort -k3
