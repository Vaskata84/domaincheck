#!/bin/bash

GREEN="\033[0;32m"
RED="\033[0;31m"
RESET="\033[0m"

while IFS= read -r domain; do
    if curl --connect-timeout 5 --silent --head --fail "$domain"; then
        echo -e "${GREEN}$domain е достъпен${RESET}"
    else
        echo -e "${RED}$domain не е достъпен${RESET}"
    fi
done < domains.txt

