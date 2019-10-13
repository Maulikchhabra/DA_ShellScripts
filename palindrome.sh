#!/bin/bash
echo "Enter a number"
read num
n=$num
rev=0
while [ $num -gt 0 ]
do
  r=`expr $num % 10`
  rev=`expr $rev \* 10 + $r`
  num=`expr $num / 10`
done
echo "reverse of $n is $rev"

if [ $n == $rev ]
then
  echo its a palindrome
else
  echo its not a palindrome
fi
