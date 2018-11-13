#!/bin/bash
# Bash script for change Desktop Theme, by Andres Bayuelo

# -> Cambiar fondo escritorio
# https://www.linuxjournal.com/content/create-dynamic-wallpaper-bash-script

wget raw.githubusercontent.com/GLUD/Logo-GLUD/0e1a356f9f59296f8244988e6f7408f172852996/kokopelli-fondo-negro.png -O wallpaper.png

gsettings set org.cinnamon.desktop.background picture-uri "file:///home/user/Documentos/wallpaper.png"
gsettings set org.cinnamon.desktop.background picture-options scaled

# -> Cambiar tema del puntero del raton
# http://www.linuxandubuntu.com/home/how-to-customize-ubuntu-1804-with-themes

gsettings set org.cinnamon.desktop.interface cursor-theme "DMZ-Black"

# -> Cambiar tema de los controles

gsettings set org.cinnamon.desktop.interface gtk-theme "Mint-Y-Dark"

# -> Cambiar tema iconos

# Instalar Papirus

sudo add-apt-repository ppa:papirus/papirus
sudo apt-get update
sudo apt-get install papirus-icon-theme

# Estableciendo Papirus

gsettings set org.cinnamon.desktop.interface icon-theme "Papirus-Dark"

# -> Cambiar bordes de la ventana

gsettings set org.cinnamon.desktop.wm.preferences theme "Mint-Y-Dark"

# -> Cambiar tema de escritorio

#gsettings set org.cinnamon.theme name "cinnamon"
gsettings set org.cinnamon.theme name "CBlack-Dark"
