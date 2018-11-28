#!/bin/bash
#Author: Alejandro Morales, GLUD  -> jalejo999@gmail.com
#Archivo: fondobloqueo.sh
#Proyecto: Distro GLUD
echo "SE CAMBIA TANTO FONDO DE PANTALLA COMO DE BLOQUEO"
wget https://raw.githubusercontent.com/GLUD/distroGLUD/master/Graficos/wallpaper.png;
#IMAGEN TEMPORAL, AUN NO ESTÁ SUBIDA LA DE FONDO
mv wallpaper.png cambioparafondo.jpg;
gsettings set org.cinnamon.desktop.background picture-uri 'file:///'$HOME'/cambioparafondo.jpg';
echo "SE HAN CAMBIADO LOS FONDOS"

