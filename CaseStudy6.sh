#!/bin/bash

i=0
b=0

while [ $i -le 2 ]
do
read A
resul=$A
a=`echo $?`
echo $a
if [ $a -eq $b ]; then
echo "command is right"
else
 echo "command wrong"
fi
((i++))
done		
