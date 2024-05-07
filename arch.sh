#!/bin/bash

red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
plain='\033[0m'

ping -q -w 1 -c 1 $(ip r | grep default | cut -d ' ' -f 3) >/dev/null && echo ok || echo error

whiptail --title "Check Internet Connection" --box "this is"
whiptail --infobox "Check Internet ... ok" 10 30
