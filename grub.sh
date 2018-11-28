
#!/bin/bash

# Cambiar la imagen del Grub

echo "Url, imagen jpg o png (640x480)"
#read imagen
imagen="https://raw.githubusercontent.com/GLUD/distroGLUD/master/Graficos/grub.png"

cd /boot/grub

sudo wget "${imagen}"

cd /

sudo update-grub2
sudo update-initramfs -u
