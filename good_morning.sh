#!/bin/bash

# This script is executed everytime the terminal is opened.

# ANSI COLORS
RED="\033[0;31m"
YELLOW="\033[0;33m"
BLUE="\033[0;34m"
RESET="\033[0m"

# Hello message
echo ""
hour=`date +%H`
if [ $hour -ge 6 ] && [ $hour -le 13 ]; # if 6 < hour < 13
then
echo -e "Bom dia ninja!"
elif [ $hour -le 19 ] # if hour < 19
then
echo -e "Boa tarde ninja!"
else    # if 6 < hour > 19 
echo -e "Boa noite ninja!"
fi

# Date and time
echo -e "Hoje é ${YELLOW}`date +%A`${RESET}, dia ${YELLOW}`date +%d`${RESET} de ${YELLOW}`date +%B`${RESET} de ${YELLOW}`date +%Y`${RESET}."
echo -e "São ${YELLOW}`date +%H`:`date +%M`${RESET}."

# Weather 
echo ""
weather=$(curl -s "wttr.in/Lisboa" | head -n 7)
echo "$weather"


# Aliases
echo ""
echo -e "Aliases:"
echo -e "${RED}calc${RESET} -> ${BLUE}qalculate ${RESET}"
echo -e "${RED}gad${RESET} -> ${BLUE}git add ${RESET}"
echo -e "${RED}gcm${RESET} -> ${BLUE}git commit ${RESET}" 
echo -e "${RED}gp${RESET} -> ${BLUE}git push ${RESET}"
echo -e "${RED}update_this${RESET} -> ${BLUE}sudo apt-get update && sudo apt-get upgrade ${RESET}"

echo ""
