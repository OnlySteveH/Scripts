#!/bin/bash
ifconfig wlan1 down
iwconfig wlan1 mode monitor
ifconfig wlan1 up
service network-manager stop
service wpa_supplicant stop
iwconfig wlan1 | grep Mode
airmon-ng check
