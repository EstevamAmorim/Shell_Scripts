#!/bin/bash
#Script that monitors all processes and generates an alert in the log if one of them exceeds the number of 5 child processes

ppids=$(ps -aux | awk '{print $2}' | sed '1d')
pids=""
count=0

while true
do
	for i in $ppids
	do      
		pids=$(ps --ppid $i | awk '{print $1}' | sed '1d')
		count=$(echo "$pids" | wc -l)

		if [ $count -gt 5 ]
		then
			logger "PID $i process created $count child processes: $( echo "$pids" | tr '\n' ' ') "
		fi
	done
	sleep 3
done
