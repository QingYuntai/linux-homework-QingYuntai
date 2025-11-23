#!/bin/bash
#practic 4

find . -type f -name "*.*" | sed 's/.*\.//' | sort | uniq -c

echo "all: $(du -sh . | cut -f1)"echo "all: $(du -sh . | cut -f1)"
