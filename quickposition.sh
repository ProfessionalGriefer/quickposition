#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
LEFT="${SCRIPT_DIR}/iPad Left"
RIGHT="${SCRIPT_DIR}/iPad Right"

function openDisplaySettings() {
    open /System/Library/PreferencePanes/Displays.prefPane
}
function printSettings() {
    /opt/homebrew/bin/displayplacer list | tail -n 1 | sed 's/^displayplacer /\/opt\/homebrew\/bin\/displayplacer /' | sed '1i\
#!/bin/bash
    '
}


# Confirm
function confirm() {
    read -p "$1" -n 1 -r
    echo    # (optional) move to a new line
    if [[ ! $REPLY =~ ^[Yy]$ ]]
    then
        [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1
    fi
}

# Welcome Screen
echo "Welcome to QuickPosition."
confirm "The display settings are going to open. (y/n) "

openDisplaySettings
confirm "Did you position your iPad to the LEFT? (y/n) "
printSettings > "${LEFT}/Contents/MacOS/iPadLeft"

openDisplaySettings
confirm "Did you position your iPad to the RIGHT? (y/n) "
printSettings > "${RIGHT}/Contents/MacOS/iPadRight"

# # Copy two folders in /Applications

mkdir -p "/Applications/iPad Left.app"
mkdir -p "/Applications/iPad Right.app"
cp -R "$LEFT" "/Applications/iPad Left.app"
cp -R "$RIGHT" "/Applications/iPad Right.app"

# ls "${SCRIPT_DIR}/iPad Left.app"

# # Exits
echo "Thank you for using Quick Position!"
