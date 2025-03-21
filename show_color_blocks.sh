#!/bin/bash
# A Bash script to showcase all 256 terminal background colors as solid blocks

# Use tput or ANSI escape sequences for resetting terminal formatting
RESET=$(tput sgr0 2>/dev/null || echo -e "\033[0m")

# Loop through color codes 0 to 255
for i in {0..255}; do
    # Attempt to set the background color using tput; fall back to ANSI if necessary
    BG=$(tput setab "$i" 2>/dev/null)
    if [ $? -ne 0 ]; then
        BG="\033[48;5;${i}m"
    fi

    # Print a block of 10 spaces in the color with a reset applied
    printf "${BG}          ${RESET} "

    # Every 8 blocks, move to a new line for a grid layout
    if (( (i + 1) % 8 == 0 )); then
        echo
    fi
done
echo
