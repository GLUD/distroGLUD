#!/bin/bash

# Script que instala el tema "GLUD Logo" como nuevo tema de plymouth por defecto.

# INFO: https://forums.linuxmint.com/viewtopic.php?t=233197

# Comando para remover el plymouth instalado con este script:
# $ sudo update-alternatives --remove default.plymouth /usr/share/plymouth/themes/glud-logo/glud-logo.plymouth && rm -rf /usr/share/plymouth/themes/glud-logo

# TODO: Mejorar "glud-logo/imagen glud-logo16.png"

THEME="glud-logo"
PLYMOUTH_DIR="/usr/share/plymouth/themes"
PLYMOUTH_THEME="$PLYMOUTH_DIR/$THEME/$THEME.plymouth"

if [ $(id -u) -eq 0 ]; then
    if [ -e $THEME ]; then
        cp -rf "./$THEME" $PLYMOUTH_DIR
        update-alternatives --install "$PLYMOUTH_DIR/default.plymouth" default.plymouth $PLYMOUTH_THEME 200 > /dev/null
        update-alternatives --set default.plymouth $PLYMOUTH_THEME > /dev/null
        update-initramfs -u
    else
        echo "Error - No existe el tema \"$THEME\" en el directorio."
    fi
else
    echo "Error - Ejecute como root."
fi