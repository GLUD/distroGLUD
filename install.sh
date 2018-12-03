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
./zsh/install.sh

# Personalización del entorno gráfico
echo "~~> customTheme.sh"
./theme/customTheme.sh

# Cambio de la imagen del Grub
echo "~~> Cambio de la imagen del Grub"
./grub.sh

# Cambio de la imagen de inicio, que en Linux mint es lm
echo "~~> Cambio imagen de inicio"
./CambiarInicio.sh

# Instalar programas
echo "~~> Instalación de programas"
./instalar

# Implementando script existente
#sudo apt-get install git
echo "~~> distroCustomization"
cd ~
git clone https://github.com/GLUD/distroCustomization.git
cd distroCustomization


