#!/bin/bash

echo "Ruta de la imagen  png (128x115)"
read imagen
#$imagen = https://i.pinimg.com/564x/92/39/c2/9239c2ad970d637b3f8c582ee17cc002.jpg
echo "!SE BORRARA EL LOGO QUE TENIA PARA EL INICIO"

sudo -s
cd /usr/share/plymouth/themes/mint-logo/
rm -R mint-logo.png
cp $imagen ./mint-logo.png
chmod 644 mint-logo.png

cd /

sudo update-initramfs -u
exit
