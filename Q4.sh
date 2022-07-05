#!/bin/bash
#Script that displays all users and their home directories

echo -e "User   -   Home Dir"
cat /etc/passwd | awk -F ":" '{print$1 "   -   " $6}'
