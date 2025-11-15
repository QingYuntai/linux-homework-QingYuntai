#!/bin/bash
# homework2_change_extension
# QingYuntai

filename=$1
old_ext=$2  
new_ext=$3

new_filename="${filename%.$old_ext}.$new_ext"
mv "$filename" "$new_filename"

