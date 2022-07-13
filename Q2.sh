#!/bin/bash
#Script that creates a file and writes the list of files from /usr/bin to it if #it doesn't exist
if [ -z "$1" ]
then
	exit 1
elif [ -e $1 ]
then
	echo "Nothing was done because the file already exists!"
	exit 1
fi

ls /usr/bin > $1 
exit 0
