#!/bin/bash

date=$(date)
echo "Ran @ ($date)"

LOG_FILE="/var/log/nginx/access.log"
THRESHOLD=10
count=$(grep -c -E " 4[0-9][0-9] " "$LOG_FILE")
 
if ! systemctl is-active --quiet nginx;then
	echo "nginx down!"
	exit 1
if ! ss -tulpn | grep -q ":80";then
	echo "port closed"
	exit 2
if ! [ "$count" -gt "$THRESHOLD" ];then
	echo "WARNING: ERROR Levels high! ($count)"
	exit 3


	exit 0	
fi
fi
fi
