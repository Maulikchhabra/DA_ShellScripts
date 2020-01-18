#!/bin/bash

if [ -z "$1" ]; then
 echo "credentials file not specified" >&2; exit 1;
elif [ -z "$2" ]; then
 echo "backup directory not specified" >&2; exit 1;
fi

credentials_file=$(realpath $1)
backup_directory=$(realpath $2)

if [ ! -f "$credentials_file" ]; then
 echo "credentials file does not exist" >&2; exit 1;
elif [ ! -d "$backup_directory" ]; then
 echo "backup directory does not exist" >&2; exit 1;
fi

source $credentials_file
if [ -z ${hostname:+word} ]; then
 echo "hostname is not set" >&2; exit 1;
elif [ -z ${username:+word} ]; then
 echo "username is not set" >&2; exit 1;
elif [ -z ${password:+word} ]; then
 echo "password is not set" >&2; exit 1;
fi

mysqldump -h$hostname -u$username -p$password --all-databases > backup.sql
if [[ $?  != 0 ]]; then
 echo "error in taking mysql backup" >&2; exit 1;
fi

mv backup.sql $backup_directory/$(date +%F_%R).sql
path_to_script=$(realpath "$0")
if ! (crontab -l | grep -Fxp "0 */12 * * * $path_to_script $credentials_file $backup_directory"); then
 crontab -l | { cat; echo "0 */12 * * * $path_to_script $credentials_file $backup_directory"; } | crontab
  echo "script added to cron"
fi

exit 0
