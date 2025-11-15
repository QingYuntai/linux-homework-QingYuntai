#!/bin/bash
#homework4
#QingYuntai

file=$1
if head -n 1 "$file" | grep -q "^>"; then
    echo "this is"
else
    echo "this is not"
fi

