#!/bin/bash
#practic 7

for i in {10..1}; do
    stars=$(printf '%*s' $i | tr ' ' '*')
    echo -ne "$stars $i\r"
    sleep 1
done
echo
