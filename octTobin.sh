#!/bin/bash
echo Enter a octal number
read a

#converting it to decimal
b=$(echo "ibase=8;$a" | bc)

echo Converting it to binary
echo "obase=2;$b" | bc
