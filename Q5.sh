#!/bin/bash
#Script that informs which shell is most used by system users and the number of users who use them

shellName=""
count=0
countAux=0 
i=""
text=$(cat /etc/passwd | awk -F ":" '{print $7}')

while [ ! -z "$text" ]
do
	i=$(echo "$text" | head -1)
	countAux=$(echo "$text" | grep -c "$i") 
	if [ $countAux -gt $count ]
	then
		shellName=$i
		count=$countAux
	fi
	text=$(echo "$text" | sed "\,$i,d")
done	

echo "Most used shell: $shellName, Number of users who use it: $count."
