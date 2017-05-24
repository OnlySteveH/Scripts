#!/bin/bash
ifconfig wlan1 down
iwconfig wlan1 mode managed
ifconfig wlan1 up
service network-manager start
iwconfig wlan1 | grep Mode
