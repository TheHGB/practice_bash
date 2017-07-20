#!/bin/bash
NETWORK=$1

IFS='.'; subs=($NETWORK); unset IFS;

case ${#subs[@]} in
	0)
		echo You gotta give me something mate
		;;
	1)
		SUB1=${subs[0]}
		for SUB2 in {1..255}
		do
			for SUB3 in {1..255} 
			do
				for SUB4 in {1..255} 
				do
					(
					ping -c 1 $SUB1"."$SUB2"."$SUB3"."$SUB4 &>/dev/null
					if [ $? -eq 0 ];
					then
						echo ping to $SUB1"."$SUB2"."$SUB3"."$SUB4 successful
					fi
					)&
				done
			done
		done
		wait
		;;
	2)
		SUB1=${subs[0]}
		SUB2=${subs[1]}
		for SUB3 in {1..255}
		do
			for SUB4 in {1..255}
			do
				(
				ping -c 1 $SUB1"."$SUB2"."$SUB3"."$SUB4 &>/dev/null
				if [ $? -eq 0 ];
				then
					echo ping to $SUB1"."$SUB2"."$SUB3"."$SUB4 successful
				fi
				)&
			done
		done
		wait
		;;
	3)
		SUB1=${subs[0]}
		SUB2=${subs[1]}
		SUB3=${subs[2]}
		for SUB4 in {1..255}
		do 
			(
			ping -c 1 $SUB1"."$SUB2"."$SUB3"."$SUB4 &>/dev/null
			if [ $? -eq 0 ];
			then
				echo ping to $SUB1"."$SUB2"."$SUB3"."$SUB4 successful
			fi
			)&
		done	  
		wait
		;;
	4)

		SUB1=${subs[0]}
		SUB2=${subs[1]}
		SUB3=${subs[2]}
		SUB4=${subs[3]}
		ping -c 1 $SUB1"."$SUB2"."$SUB3"."$SUB4 &>/dev/null
		if [ $? -eq 0 ];
		then
			echo ping to $SUB1"."$SUB2"."$SUB3"."$SUB4 successful
		fi
		;;
	*)
		echo IPv4 pls
esac
