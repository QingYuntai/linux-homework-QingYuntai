#!/bin/bash
#6.4

grep -E '^.{8,}$' passwords.txt | \
grep '[A-Z]' | \
grep '[a-z]' | \
grep '[0-9]' | \
grep '[^A-Za-z0-9]'
