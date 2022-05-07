#!/bin/bash

while :
	do
	DATE=`date +"%d-%m-%y | %T"`
	TEMP=(`sensors | grep Core`)
	#RAMAMT=(`cat /proc/meminfo | grep MemTotal`)
	#RAMCUR=(`cat /proc/meminfo | grep MemFree`)
	#RAMUSG=$(( ${RAMAMT[1]} - ${RAMCUR[1]}))
  # adjust the line below if your ip starts with 10 instead of 192
	IP=(`ip a | grep 192`)
	#eval "xsetroot -name '| ${IP[1]} | ${TEMP[2]} | $(((${RAMAMT[1]}/$RAMUSG))) | ${DATE} |'"
  
  # tray version
  #eval "xsetroot -name '| ${IP[1]} | ${TEMP[2]} | ${DATE} | _____'"
  
  # no tray version
	eval "xsetroot -name '| ${IP[1]} | ${TEMP[2]} | ${DATE} |'"
  
	sleep 0.5
	done
