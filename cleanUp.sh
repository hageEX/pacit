#!/bin/sh

echo -n "CleanUp[y/N]: "

read keyboard
case $keyboard in
    [Yy] )
        pkill -KILL -f conky
        rm -rf Icon_Theme/Hackers_icon
        rm -rf Icon_Theme/Hackers_theme
        rm -r ~/.icons/Hackers_icon
        rm -r ~/.themes/Hackers_theme
        rm ~/.config/conky/conky.conf
        rm ~/Desktop/conky-start.desktop
        rm ~/Pictures/ghost.jpg
        sudo rm /etc/conky/parrot.png
        sudo rm /etc/conky/rings.lua
        sudo rm -r /usr/share/fonts/truetype/future
        sudo rm -r /usr/local/share/pixmaps
        sudo rm /usr/share/applications/conky-start.desktop

        gsettings set org.mate.background picture-filename /usr/share/backgrounds/default.jpg
        gsettings set org.mate.Marco.general theme ARK-Dark
        gsettings set org.mate.interface gtk-theme ARK-Dark
        gsettings set org.mate.interface icon-theme maia

        echo 'remove Icon_Theme/Hackers_icon'
        echo 'remove Icon_Theme/Hackers_theme'
        echo 'remove ~/.icons/Hackers_icon'
        echo 'remove ~/.theme/Hackers_theme'
        echo 'remove ~/.config/conky'
        echo 'remove Desktop/conky-start.desktop'
        echo 'remove Pictures/ghost.jpg'
        echo 'remove /etc/conky'
        echo 'remove /usr/share/fonts/truetype/future'
        echo 'remove /usr/share/applications/conky-start.desktop'
        echo 'remove /usr/share/local/pixmaps'
        echo 'Change Default theme'
        echo 'Change Default icon'
        sudo apt -y remove conky conky-all
        echo 'remove conky conky-all'
        echo 'Complete. Thank you.'
        ;;
    "" | * )
        ;;
esac
