#!/bin/bash

if [ ! -d ./temp ]; then
mkdir temp
echo "create dir"
fi

cp ./num1.txt ./temp
cp ./num2.txt ./temp
cp ./cal.sh ./temp
echo "copy files"

echo "Select : add 1,  sub 2,  div 3,  mul 4"

read parameter

sh cal.sh $parameter

exit 0
