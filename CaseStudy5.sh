#!/bin/bash

read -p "Enter port number:" port
list= $(netstat -l src :$port | grep "\<$port\>")
if test -z "$port"; echo $?
then
    #echo "hello"
    date -u
    echo $(date -u)
    /etc/init.d/apache2 start > /dev/null
else 
    echo "Port number listings found"
fi
