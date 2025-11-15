#!/bin/bash
# homework 2
# QingYuntai


if [ "$1" = "-u" ]; then
    echo "$2" | tr 'a-z' 'A-Z'
elif [ "$1" = "-l" ]; then
    echo "$2" | tr 'A-Z' 'a-z'
fi
