#!/bin/bash

echo Enter a hexadecimal number
read a

#converting it to decimal
b=$( echo "ibase=16; $a" | bc )

echo Converting it to octal 
echo "obase=8; $b " | bc
