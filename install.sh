#!/bin/bash

# Configuración del proxy 
#./proxy.sh

MAIN_DIR="/usr/local/bin/glud"

# Actualización del sistema
echo "~~> Update"
sudo apt-get -y update
echo "~~> Upgrade"
sudo apt-get -y upgrade

# Crear carpeta principal donde se guardan los scripts
mkdir -p $MAIN_DIR

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
./plymouth.sh

# Instalación del cron job apagado.sh
echo "~~> Instalación del cron job apagado.sh"
cp apagado.sh $MAIN_DIR
./cron.sh -u $SUDO_USER -n Apagado "0 22 * * *  $MAIN_DIR/apagado.sh"

# Instalación del cron job descargas.sh
echo "~~> Instalación del cron job descargas.sh"
cp descargas.sh $MAIN_DIR
./cron.sh -u $SUDO_USER -n Descargas "@reboot     $MAIN_DIR/descargas.sh"

# Instalar programas
echo "~~> Instalación de programas"
./programas2.sh

# Implementando script existente
#sudo apt-get install git
echo "~~> distroCustomization"
cd ~
git clone https://github.com/GLUD/distroCustomization.git
cd distroCustomization

# Proxy para Docker
echo "~~> Proxy Docker"
./docker.sh