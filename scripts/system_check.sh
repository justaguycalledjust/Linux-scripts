#!/bin/bash

name="Dave Buznik"
echo "$name, We're checking something"
	sleep 2

echo "====== SYSTEM CHECK ======"
	date
	sleep 2
echo "<><><><><><><><><><><"
	echo "CPU Load:"
		uptime
	sleep 2 
echo "<><><><><><><><><><><"
	echo "Memory:"
		free -h
	sleep 2
echo "<><><><><><><><><><><"
	echo "Disk:"
		df -h
		usage=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')
			if [ "$usage" -gt 80  ]; then
				echo "WARNING: Disk usage above 80% "
        fi
	sleep 2
echo "<><><><><><><><><><><"
	echo "Top processes:"
		ps aux --sort=-%cpu | head -5

echo "=========================="



