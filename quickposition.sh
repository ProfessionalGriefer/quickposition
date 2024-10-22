#!/bin/bash

# Welcome Screen
echo "Welcome to QuickPosition."

# Confirm
read -p "Are you sure? " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1
fi


# Open Display settings
open /System/Library/PreferencePanes/Displays.prefPane

# Set for left side
/opt/homebrew/bin/displayplacer list

# Open Display settings
open /System/Library/PreferencePanes/Displays.prefPane

# Set for right side
/opt/homebrew/bin/displayplacer list

# Copy two folders in /Applications

# Write displayplacer command string into iPadLeft and iPadRight

# Exits
