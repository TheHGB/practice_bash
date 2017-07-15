#!/bin/bash
#this creates junk through parallel processes

x=0
files=$1
size=$2

files=${files:=10}
size=${size:=10}

PIDS=()

while [ $x -lt $files ]
do
	dd if=/dev/zero of=junk$x bs="$size"M count=1 &
	PIDS+=("$!")
	x=$[$x+1]
done
wait ${PIDS[@]}
