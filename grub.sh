
#!/bin/bash

# Cambiar la imagen del Grub

echo "Url, imagen jpg o png (640x480)"
read imagen

cd /boot/grub	

sudo wget $imagen

cd /

sudo update-grub2
sudo update-initramfs -u
