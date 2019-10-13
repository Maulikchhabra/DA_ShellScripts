#!/bin/bash

echo Enter a octal number
read a

#converting it in decimal
b=$(echo "ibase=8; $a " | bc )

echo Converting it to hexadecimal
echo "obase=16; $b " | bc
