#!/bin/bash

# Configuración del proxy 
#./proxy.sh

# Actualización del sistema
echo "~~> Update"
sudo apt-get -y update
echo "~~> Upgrade"
sudo apt-get -y upgrade

# Instalación de zsh para personalizar la terminal
echo "~~> Instalación de zsh"
./install_zsh.sh

# Personalización del entorno gráfico
echo "~~> editTheme.sh"
./editTheme.sh

# Cambio de la imagen del Grub
echo "~~> Cambio de la imagen del Grub"
./grub.sh

# Cambio de la imagen de inicio, que en Linux mint es lm
echo "~~> Cambio imagen de incio"
./CambiarInicio.sh

# Implementando script existente
#sudo apt-get install git
echo "~~> distroCustomization"
cd ~
git clone https://github.com/GLUD/distroCustomization.git
cd distroCustomization
./instalar

