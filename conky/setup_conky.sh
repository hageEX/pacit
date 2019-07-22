#!/bin/sh

mkdir -p ~/.config/conky
sudo mkdir -p /etc/conky
sudo mkdir -p /usr/share/fonts/truetype

echo -n "setup[Y/n]: "

read keyboard
case $keyboard in
    "" | [Yy]* )
        sudo cp -u parrot.png rings.lua /etc/conky
        sudo cp -u conky-start.desktop /usr/share/applications
        sudo cp -ru future /usr/share/fonts/truetype
        cp -u conky.conf ~/.config/conky
        cp -u conky-start.desktop ~/Desktop
        echo "Setup to ~/.config/conky/conky.conf"
        echo "Setup to /etc/conky/parrot.png"
        echo "Setup to /etc/conky/rings.lua"
        echo "Setup to /usr/share/applications/conky-start.desktop"
        echo "Setup to ~/Desktop/conky-start.desktop"
        echo "Setup to /usr/share/fonts/trutype/future"
        apt install conky conky-all
        echo "Complete."
        ;;
    * )
        echo "Thank you. Bye."
        ;;
esac


