#!/bin/bash

if [ $# -lt 1 ]; then
	echo "no parameter, enter parameter, add 1, sub 2, div 3, mul 4"
	read pa
else
	let pa=$(($1))
fi

let val1=$(<num1.txt)
let val2=$(<num2.txt)
let result=0

echo "num1 : $val1"
echo "num2 : $val2"
echo $pa

if [ ${pa} -eq 1 ]; then
	result=$(($val1+$val2))
	echo "op add"
	echo "result = $result"

elif [ ${pa} -eq "2" ]; then
	result=$(($val1-$val2))
	echo "op sub"
	echo "result = $result"

elif [ ${pa} -eq "3" ]; then
	result=$(($val1/$val2))
	echo "op div"
	echo "result = $result"

else 
	result=$(($val1*$val2))
	echo "op mul"
	echo "result = $result"
fi

exit 0
