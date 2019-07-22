#!/bin/sh

sudo mkdir -p /usr/local/share/pixmaps
sudo cp -u vender/parrot.svg vender/parrot-logo.png /usr/local/share/pixmaps

gsettings set org.mate.panel.menubar icon-name parrot
#gsettings set org.mate.panel.menubar icon-name parrot-logo

mkdir -p ~/.icons
mkdir -p ~/.themes
cp -r Hackers_icon ~/.icons
cp -r Hackers_theme ~/.themes

