#!/bin/bash
# Author: Vincent Nahn

###############################################################################
#  ________  ___  ___  ___  ________  ___  __                                 #
# |\   __  \|\  \|\  \|\  \|\   ____\|\  \|\  \                               #
# \ \  \|\  \ \  \\\  \ \  \ \  \___|\ \  \/  /|_                             #
#  \ \  \\\  \ \  \\\  \ \  \ \  \    \ \   ___  \                            #
#   \ \  \\\  \ \  \\\  \ \  \ \  \____\ \  \\ \  \                           #
#    \ \_____  \ \_______\ \__\ \_______\ \__\\ \__\                          #
#     \|___| \__\|_______|\|__|\|_______|\|__| \|__|                          #
#           \|__|                                                             #
#                                                                             #
#  ________  ________  ________  ___  _________  ___  ________  ________      #
# |\   __  \|\   __  \|\   ____\|\  \|\___   ___\\  \|\   __  \|\   ___  \    #
# \ \  \|\  \ \  \|\  \ \  \___|\ \  \|___ \  \_\ \  \ \  \|\  \ \  \\ \  \   #
#  \ \   ____\ \  \\\  \ \_____  \ \  \   \ \  \ \ \  \ \  \\\  \ \  \\ \  \  #
#   \ \  \___|\ \  \\\  \|____|\  \ \  \   \ \  \ \ \  \ \  \\\  \ \  \\ \  \ #
#    \ \__\    \ \_______\____\_\  \ \__\   \ \__\ \ \__\ \_______\ \__\\ \__\#
#     \|__|     \|_______|\_________\|__|    \|__|  \|__|\|_______|\|__| \|__|#
#                        \|_________|                                         #
###############################################################################


SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# Do not change these names as they are used within the Info.plist files
LEFT="iPad Left.app"
RIGHT="iPad Right.app"

function openDisplaySettings() {
    open /System/Library/PreferencePanes/Displays.prefPane
}



# Param1: deviceName
function template() {
    echo "#!/bin/bash

function run() {
    $(displayplacer list | tail -n 1 | sed 's/^displayplacer /\/opt\/homebrew\/bin\/displayplacer /')
}

function existsMonitor() {
    [ \$(/opt/homebrew/bin/displayplacer list | grep \"Persistent screen id\" | wc -l) -ge 2 ]
}

if \$(existsMonitor)
then
    run
else
    open /Applications/sidecar.app
    while ! \$(existsMonitor); do
        sleep .5
    done
    run
fi
"
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

echo "What is the name of your iPad?"
read -p "$1" -n 25 -r
DEVICE_NAME=$REPLY

cat ./sidecar.applescript | sed "s/iPadName/$DEVICE_NAME/g" | osacompile -o sidecar.app
cp -R ./sidecar.app /Applications/

confirm "The display settings are going to open. First, position your iPad to the left side of your MacBook (Press y to continue) "


# Left side
openDisplaySettings
confirm "Did you position your iPad to the LEFT? (Press y to continue) "
template $DEVICE_NAME > "${SCRIPT_DIR}/${LEFT}/Contents/MacOS/iPadLeft"

# Right side
openDisplaySettings
confirm "Did you position your iPad to the RIGHT? (Press y to continue) "
template $DEVICE_NAME > "${SCRIPT_DIR}/${RIGHT}/Contents/MacOS/iPadRight"

# Set the execute permissions
chmod +X "${SCRIPT_DIR}/${LEFT}/Contents/MacOS/iPadLeft"
chmod +X "${SCRIPT_DIR}/${RIGHT}/Contents/MacOS/iPadRight"

# Copy the two folders into /Applications
rm -rf "/Applications/${LEFT}"
rm -rf "/Applications/${RIGHT}"
cp -R "$LEFT" "/Applications"
cp -R "$RIGHT" "/Applications"


# Exits
echo "Thank you for using Quick Position!"
echo "You can now remove the cloned directory."
