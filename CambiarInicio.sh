#!/bin/bash

echo "Ruta de la imagen  png (128x115)"
read imagen
echo "!SE BORRARA EL LOGO QUE TENIA PARA EL INICIO"

sudo -s
cd /usr/share/plymouth/themes/mint-logo/
rm -R mint-logo.png
cp $imagen ./mint-logo.png
chmond 644 mint-logo.png

cd /


sudo update-initramfs -u
exit
