#!/bin/bash

read -e -p "log directory" log
read -e -p "file extension" extension
read -e -p "backup directory" backup

tar czf archive.tar.gz $(find $log -name "*.$extension")

mv $backup/$(date +%F).tar.gz
rm $(find $log -name "*.$extension")

exit 0
