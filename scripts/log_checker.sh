#!/bin/bash

date

LOG_FILE="/var/log/nginx/access.log"
THRESHOLD=10
count=$(grep -c -E " 4[0-9][0-9] " "$LOG_FILE")

echo "=====LOG CHECKS====="

	if [ "$count" -gt "$THRESHOLD" ]; then
		echo "WARNING: High number of errors ($count)"
	else
		echo "levels normal ($count)"
	fi
