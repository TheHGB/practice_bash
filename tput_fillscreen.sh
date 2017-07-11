#!/bin/bash
#Just discovered tput and stuffs...

clear
cols=$(tput cols)
rows=$(tput lines)
while :
do
	col=$(shuf -i 0-$cols -n 1)
	row=$(shuf -i 0-$rows -n 1)
	num=$(shuf -i 21-90 -n 1)
	tput cup $row $col
	printf "\x$num"
done
