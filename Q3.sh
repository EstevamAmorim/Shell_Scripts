#!/bin/bash
#Script that displays the size in bytes of a file

if [ -z "$1" ] || [ ! -e $1 ]
then
	exit 1
fi

echo "The file: $1 has $(stat -c%s $1) bytes." 
exit 0
