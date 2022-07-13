#!/bin/bash
#Script that checks if the informed user is a valid system user
echo -e "Enter the username you want to verify: "

read username

if grep -ci "^$username:" /etc/passwd > /dev/null
then
	echo "Valid Username!"
	exit 0
fi

echo "Invalid User!"
exit 1
	

