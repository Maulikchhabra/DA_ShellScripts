#!/bin/bash
echo "Enter a number"
read x

c=$x
sum=0
n=0
r=0

while [ $c -gt 0 ]
do
r=` expr $c % 10 `
n=` expr $r \* $r \* $r `
c=` expr $c / 10 `
sum=` expr $sum + $n ` 
done

if [ $sum -eq $x ]
then
echo "$x is an armstrong number"
else
echo "$x is not an armstrong number"
fi
