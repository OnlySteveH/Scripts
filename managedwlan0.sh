#!/bin/bash

ifconfig wlan0 down
iwconfig wlan0 mode managed
ifconfig wlan0 up
iwconfig wlan0 | grep Mode
service network-manager restart
