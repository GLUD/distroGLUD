
#!/bin/bash

# Cambiar la imagen del Grub

echo "Url, imagen jpg o png (640x480)"
#read imagen
imagen="https://mfiles.alphacoders.com/736/736874.jpg"
#https://raw.githubusercontent.com/grupo-glud/Logo-GLUD/master/kokopelli-fondo-negro.png"

cd /boot/grub

sudo wget "${imagen}"

cd /

sudo update-grub2
sudo update-initramfs -u
