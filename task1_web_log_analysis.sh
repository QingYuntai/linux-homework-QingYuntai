#!/bin/bash
#homework5_QingYuntai

# Task 1
awk '{print $1, $9}' access.log > status_codes.txt

# Task 2:
sed 's/ 4[0-9][0-9] / CLIENT_ERROR /g' access.log > errors.log

# Task 3:
for ip in $(awk '{print $1}' status_codes.txt | sort -u)
do
    count=$(grep -c "$ip" status_codes.txt)
    echo "$ip: $count"
done
