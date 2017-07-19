#!/bin/bash
#just some stupid stuff

eject 
eject -T 2> /dev/null
if [ ! $? ]
then
	while :
	do
		eject -T
		sleep 10
	done
else
	while : 
	do 
		eject
		sleep 10
	done
fi
