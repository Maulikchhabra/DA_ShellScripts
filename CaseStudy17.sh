#!/bin/bash

if [ $( ifconfig | grep -o $1 ) == $1 ]
then
ifconfig $1 | sed 3,8d | sed 1d
echo " Public IP: "
curl --interface $1 http://ifconfig.co

else
echo "NIC does not exist"
exit 125
fi
