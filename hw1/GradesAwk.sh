#!/bin/bash
#Muntadher AlZayer 104348447

exec < $1
file=$1
cat $file | awk -F ' ' '{print (($6 + $4 + $5)/3) "["$1"]" $2"," $3}' > foo.txt
sort -k3 -k4 < foo.txt
