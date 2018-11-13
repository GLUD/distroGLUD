#!/bin/bash

# Configuración del proxy 
#./proxy.sh

# Actualización del sistema
sudo apt-get -y update
sudo apt-get -y upgrade

# Cambio de la imagen de inicio, que en Linux mint es lm
echo "Cambio imagen de incio"
./CambiarInicio.sh

# Instalación de zsh para personalizar la terminal
echo "Instalación de zsh"
./guia_zsh.sh

# Personalización del entorno gráfico
echo "editTheme.sh"
./editTheme.sh

# Cambio de la imagen del Grub
echo "Cambio de la imagen del Grub"
./grub.sh

# Implementando script existente
sudo apt install git
echo "distroCustomization"
cd 
git clone https://github.com/GLUD/distroCustomization.git
cd distroCustomization
./instalar

