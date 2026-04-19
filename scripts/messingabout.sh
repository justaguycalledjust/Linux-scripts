#!/bin/bash

date

name="Master chief"
echo "$name, We're checking something"

echo "********"
	sleep 1
echo "******.."
	sleep 1
echo "****...."
	sleep 1
echo "**......"
	sleep 1
echo "<><><><><><>Checking SSH<><><><><><>"
	sleep 1
if sudo systemctl is-active --quiet ssh; then
 	echo "ssh open"
else
	echo "opening ssh"
	sudo systemctl start ssh

	sleep 2
	echo "ssh available"
fi
