#!/bin/bash
#homework7
#QingYuntai

file=$1

if [ ! -e "$file" ]; then
    echo "Error: File does not exist"
    exit 1
fi

if [ -d "$file" ]; then
    ls "$file"
else
    echo "File information:"
    ls -l "$file"
    echo "Line count: $(wc -l < "$file")"
fi
