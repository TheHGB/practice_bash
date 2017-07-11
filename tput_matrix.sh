#!/bin/bash
#Dunno why

clear

rows=$(tput lines)
cols=$(tput cols)

while :
do
	col=$(shuf -i 0-$cols -n 1)
	row=$(shuf -i 0-$rows -n 1)
	for x in $(eval echo {0..$(shuf -i 5-10 -n 1)});
	do
		num=$(shuf -i 30-39 -n 1)
		tput cup $((row+$x)) $col
		echo -e "\e[32m$(printf "\x$num")"
		sleep 0.03		
	done
done
