#!/bin/bash

date=$(date)

echo "What's your name?"

read name
	(name=$1)
		echo "Sorry $name but i'm renaming you Dillon."
sleep 4
echo "DILLON!! You son of a bitch. The CIA got you pushing to many pencils?"
sleep 2 
	echo "You and the boys wanna hunt a predator?? (y/n)" 
read predator
	if [[ $predator == "y" ]];then
		echo " It's $date so you better,   GET TO THE CHOPPA!!"
else
	echo "you died on $date"
fi


