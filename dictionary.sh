#!/bin/bash
#Simple script that downloads a dictionary and checks if a word exists and gives its definition, and also that of different words

ping -c 1 raw.githubusercontent.com &> /dev/null
if [ ! $? -eq 0 ]; then
	echo "Can't reach the dictionary, check your connection"
	exit 1
fi

echo Which word do you want to search?
read word
clear
a=$(curl -s https://raw.githubusercontent.com/sujithps/Dictionary/master/Oxford%20English%20Dictionary.txt | grep -i "^$word" | uniq)

if [[ ! -z $a ]]; then
	echo $a
else
	echo Word not found
fi
