#!/bin/bash

# Configuración del proxy 
#./proxy.sh

# Actualización del sistema
sudo apt update
sudo apt upgrade

# Cambio de la imagen del Grub
./grub.sh

# Cambio de la imagen de inicio, que en Linux mint es lm
./CambiarInicio.sh

# Instalación de zsh para personalizar la terminal
./guia_zsh.sh

# Personalización del entorno gráfico
./editTheme.sh
