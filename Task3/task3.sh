#!/bin/bash
#practic 3

file=$1

tr '[:upper:]' '[:lower:]' < "$file" | tr -cs '[:alnum:]' '\n' | sort | uniq -c | sort -nr | head -10
