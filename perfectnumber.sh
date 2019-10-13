#!/bin/bash
echo Enter a number
read n
i=1
sum=0
while [ $i -lt $n ]
do
 if [ ` expr $n % $i ` -eq 0 ]
 then
   sum=` expr $i + $sum `
 fi
 i=` expr $i + 1 `
done
if [ $sum -eq $n ]
then
 echo "$n is a perfect no"
else
 echo "$n is not a perfect number"  
fi
