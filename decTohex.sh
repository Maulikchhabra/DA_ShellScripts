#!/bin/bash

echo Enter a decimal number
read a

echo Converting it to hexadecimal
echo "obase=16; $a " | bc
