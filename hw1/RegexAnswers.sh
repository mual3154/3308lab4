#!/bin/bash

exec < $1
file=$1
line1= grep [0-9]\Z $file | wc -l
line2= grep ^[^aeiou] $file | wc -l
line3= grep -cE "[^a-z]{12}$" $file
line4= grep -c "[0-9]*-[0-9]*-[0-9]*"  $file 
line5= grep -c "303-[0-9]*-[0-9]*" $file
line6= grep -c "^[aeiou].*[0-9]" $file 
line7= grep -c "[a-z].*@geocities.com" $file
line8= grep -c "[a-z].*@.*.[^edu,org,com,gov,mil,net,int]" $file
