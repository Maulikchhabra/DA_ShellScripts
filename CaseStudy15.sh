#!/bin/bash
download_directory="$home/downloads"
if [ -z "$1" ]; then
echo "download list file is not specified in the argument" >&2;
exit 1;
fi
if ! [ -z "$2" ]; then
download_directory=$2
fi
if [ ! -d $download_directory ]; then
mkdir -p $download_directory
fi
download_list=$1
cat $download_list | while read url; do
echo "-------------------------------------------------"
echo "$url"
wget -P $download_directory $url
done
exit 0 
