#!/bin/bash
 
read -e -p "Enter log location" loc

echo "All request in last 24 hours are :"

awk -vDate=`date -d 'now-24 hours' +[%d/%b/%Y:%H:%M:%S` '{if ($4 >Date) print Date FS $4}' ${loc}

echo " Response code of the entires are :"

awk '{print $9}' ${loc} | sort | uniq -c | sort -rn


#awk -vDate=`date -d 'now-24 hours' +[%d/%b/%Y:%H:%M:%S` '{if ($4 >Date) print Date FS $4}' /var/log/apache2/access.log
