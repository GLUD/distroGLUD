#!/bin/bash

# Configuración del proxy 
#./proxy.sh

# Actualización del sistema
sudo apt -y update
sudo apt -y upgrade

# Cambio de la imagen del Grub
./grub.sh

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

