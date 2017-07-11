#!/bin/bash
#Just found about epoch and date and I'm having fun

while :
do
	echo "Eneter a date (Month/Day/Year or Month Day Year)" 
	read date
	day=$(date --date $date +%A)
	if [ $day ]; then
		echo "That day was $day"
	fi
done

