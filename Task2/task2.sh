#!/bin/bash
#practic 2

for file in *.txt; do
    if [ -f "$file" ]; then
        cp "$file" "${file%.txt}_$(date +%Y%m%d).txt"
    fi
done
