#!/bin/bash

while :
	do
	DATE=`date +"%d-%m-%y | %T"`
	TEMP=(`sensors | grep Core`)
	WTHR=(`curl https://wttr.in/Warsaw?format=1`)
	#RAMAMT=(`cat /proc/meminfo | grep MemTotal`)
	#RAMCUR=(`cat /proc/meminfo | grep MemFree`)
	#RAMUSG=$(( ${RAMAMT[1]} - ${RAMCUR[1]}))
	IP=(`ip a | grep 192`)
	#eval "xsetroot -name '| ${IP[1]} | ${TEMP[2]} | $(((${RAMAMT[1]}/$RAMUSG))) | ${DATE} |'"
	eval "xsetroot -name '| ${IP[1]} | ${TEMP[2]} | ${WTHR[1]} | ${DATE} |'"
	sleep 1
	done
