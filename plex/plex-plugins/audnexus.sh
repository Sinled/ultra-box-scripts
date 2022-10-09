#!/bin/bash

# based on https://github.com/ultraseedbox/UltraSeedbox-Scripts/blob/master/Plex/Plex-Plugins/trakt.sh

plugindir=$HOME/.config/plex/Library/Application\ Support/Plex\ Media\ Server/Plug-ins/

if [ ! -d "$HOME/.config/plex/" ];
then
    echo "Plex is not installed. Exiting..."
    exit
else
    echo "Installing Audnexus client"
    cd "$HOME" || exit
    git clone https://github.com/djdembeck/Audnexus.bundle.git
    cp -a Audnexus.bundle "$plugindir"
    cd "$HOME" || exit
    rm -rf Audnexus.bundle
    app-plex restart
    sleep 15
    echo "Audnexus client installed!"
    exit
fi
