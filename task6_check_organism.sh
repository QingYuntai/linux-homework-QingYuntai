#!/bin/bash
#homework6
#QingYuntai

file=$1
organism=$2

if [ ! -f "$file" ]; then
    echo "Erro,file not"
    exit 1
fi
if [ "$organism" = "human" ] || [ "$organism" = "mouse" ] || [ "$organism" = "rat" ] || [ "$organism" = "fly" ]; then
    echo "Processing $file"
else
    echo "Error: Unsupported organism '$organism'"
    echo "Supported organisms: human, mouse, rat, fly"
    exit 1
fi
