#!/bin/bash
#Filename: find_broken.sh
#Desc: Find broken links in a website
mkdir /tmp/$$.lynx
cd /tmp/$$.lynx
lynx  -traversal $1 > /dev/null 
count=0;
sort -u reject.dat > links.txt
while read link;
do
	output=`curl -I $link -s | grep "HTTP/.*OK"`;
	if [[ -z $output ]];
	then
		echo $link;
		let count++
	fi
done < links.txt
