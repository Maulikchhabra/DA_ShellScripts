#!/bin/bash
echo Enter a hexadecimal number
read a

#echo "Converting it to decimal" 
b=$(echo "ibase=16; $a" |bc)

echo "Converting it to binary"
echo "obase=2; $b" |bc
