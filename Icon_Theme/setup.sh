#!/bin/sh

mkdir -p /usr/local/share/pixmaps
cp -u vender/parrot.svg vender/parrot-logo.png /usr/local/share/pixmaps

gsettings set org.mate.panel.menubar icon-name parrot
#gsettings set org.mate.panel.menubar icon-name parrot-logo
