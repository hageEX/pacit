#!/bin/sh

sudo mkdir -p /usr/local/share/pixmaps
sudo cp -u vender/parrot.svg vender/parrot-logo.png /usr/local/share/pixmaps
sudo cp -u vender/parrot-icons/* /usr/local/share/pixmaps

mkdir -p ~/.icons
mkdir -p ~/.themes
cp -r Hackers_icon ~/.icons
cp -r Hackers_theme ~/.themes

gsettings set org.mate.panel.menubar icon-name parrot
#gsettings set org.mate.panel.menubar icon-name parrot-logo

gsettings set org.mate.Marco.general theme Hackers_theme
gsettings set org.mate.interface gtk-theme Hackers_theme
gsettings set org.mate.interface icon-theme Hackers_icon
