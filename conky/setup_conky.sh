#!/bin/sh

mkdir -p ~/.config/conky
mkdir -p /etc/conky
mkdir -p /usr/share/fonts/truetype

echo -n "setup[Y/n]: "

read keyboard
case $keyboard in
    "" | [Yy]* )
        cp -u conky.conf ~/.config/conky
        cp -u parrot.png rings.lua /etc/conky
        cp -u conky-start.desktop /usr/share/applications
        cp -u conky-start.desktop ~/Desktop
        cp -ru future /usr/share/fonts/truetype
        echo "Setup to ~/.config/conky/conky.conf"
        echo "Setup to /etc/conky/parrot.png"
        echo "Setup to /etc/conky/rings.lua"
        echo "Setup to /usr/share/applications/conky-start.desktop"
        echo "Setup to ~/Desktop/conky-start.desktop"
        echo "Setup to /usr/share/fonts/trutype/future"
        echo "Complete. Thank you."
        ;;
    * )
        echo "Thank you. Bye."
        ;;
esac


