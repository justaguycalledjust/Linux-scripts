#!/bin/bash
date

LOG_FILE="/var/log/nginx/access.log"
THRESHOLD=10
count=$(grep -c -E " 4[0-9][0-9] " "$LOG_FILE")

echo "======Checking nginx======"


if systemctl is-active --quiet nginx; then
	if ss -tulpn | grep -q ":80"; then
		if [ "$count" -gt "$THRESHOLD" ]; then
			echo "WARNING: High level of errors ($count)"
		else
		echo "nginx healthy ($count)"
		fi
	else
	echo "nginx running, port closed"
	fi
else
echo "nginx is down"
fi
