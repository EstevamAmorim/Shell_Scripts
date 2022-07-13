#!/bin/bash
#Script that receives two words as a parameter and checks if the first is contai#ned in the second

if [ -z "$1" ] || [ -z "$2" ] || [ -z $(echo "$2" | grep "$1") ]
then
	exit 1
else
	echo "The word $1 is contained in $2."
	exit 0
fi
