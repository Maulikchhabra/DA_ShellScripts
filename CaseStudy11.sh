#!/bin/bash

FILES=/home/maulik/myfile/* #providing path for files to be traversed

for f in $FILES
do 
 echo "Processing $f" #take action on each file.$f store current file name
 #wide spaced line
 echo -en "\n"
 wc $f #count of lines and characters
 echo -en "\n"
 #ls -l $f
 stat -c "%U" $($f)
  #counter to indicate the line numbers of the file
 cat -n $f
 echo -en "\n"
 echo -en "\n"
 echo -en "\n"
done  
