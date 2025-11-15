#!/bin/bash
#homework5
#QingYuntai

file=$1

if [ -f "$file" ]; then
    ln -s "$file" $(basename "$file")
    echo "link created"
else
    echo "Error"
fi
