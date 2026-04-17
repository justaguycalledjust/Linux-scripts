#!/bin/bash

name="Ricky Rosay, the biggest boss!"
echo "$name it's time"

date

LOG_FILE="/var/log/nginx/access.log"
THRESHOLD=10
echo "======CHECKING LOGS======"


count=$(grep -c -E " 4[0-9][0-9] " "$LOG_FILE")
	
	if [ "$count" -gt "$THRESHOLD" ]; then
		echo "WARNING: High number of errors ($count)"
	else
		echo "levels normal ($count)"
	fi
