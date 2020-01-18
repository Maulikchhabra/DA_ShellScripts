#!/bin/bash

find /home/  -name ".tar" -type f -mtime +2 -exec rm -f {} \;
