#!/bin/bash
#Muntadher AlZayer 104348447

exec < $1
file=$1
let avg=0
touch foo.txt
echo "this happens 1"
while IFS=' ' read -r f1 f2 f3 f4 f5 f6
do
	let avg=$f4+$f5+$f6
	let avg=$avg/3
	echo "$avg" ["$f1"] "$f3, $f2" >> foo.txt
done 
sort -k3 -k4 < foo.txt
