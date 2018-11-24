#!/bin/bash

echo "Ruta de la imagen  png (128x115)"
#read imagen
imagen="https://upload.wikimedia.org/wikipedia/commons/thumb/b/b0/NewTux.svg/300px-NewTux.svg.png"

echo "!SE BORRARA EL LOGO QUE TENIA PARA EL INICIO"

cd /usr/share/plymouth/themes/mint-logo/
sudo rm -R mint-logo.png
sudo wget -O mint-logo.png "${imagen}"
	#wget con el parametro de output para cambiar el nombre
sudo chmod 644 mint-logo.png

cd /

sudo update-initramfs -u
exit
