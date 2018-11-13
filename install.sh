#!/bin/bash

# Configuración del proxy 
#./proxy.sh

# Actualización del sistema
sudo apt-get -y update
sudo apt-get -y upgrade

# Cambio de la imagen de inicio, que en Linux mint es lm
./CambiarInicio.sh

# Instalación de zsh para personalizar la terminal
./guia_zsh.sh

# Personalización del entorno gráfico
./editTheme.sh

# Implementando script existente
sudo apt install git
cd 
git clone https://github.com/GLUD/distroCustomization.git
cd distroCustomization
./instalar

# Cambio de la imagen del Grub
./grub.sh

