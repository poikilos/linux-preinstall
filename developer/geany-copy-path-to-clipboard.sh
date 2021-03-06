#!/bin/bash
source $HOME/.config/linux-preinstall/globals.rc
if [ $? -ne 0 ]; then
    echo "ERROR: 'source $HOME/.config/linux-preinstall/globals.rc' failed."
    echo "You must run linux-preinstall/setup.sh first."
    echo "Ensure the source command is available such as by using bash."
    exit 1
fi
source $LINUX_PREINSTALL/api.rc
if [ $? -ne 0 ]; then
    echo "ERROR: 'source $LINUX_PREINSTALL/api.rc' failed."
    echo "You must run linux-preinstall/setup.sh first."
    exit 1
fi

G_P_INSTALLER_PATH="$LINUX_PREINSTALL/utilities/install-geany-plugin.sh"
echo "* [$0] running $G_P_INSTALLER_PATH addons..."
$G_P_INSTALLER_PATH addons
