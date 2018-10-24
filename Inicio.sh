
#!/bin/bash

#Se añade la configuracion del proxy para la universidad

PROXY_DIR=http://10.20.4.15:3128

export {HTTP,HTTPS,FTP,ALL,SOCKS,RSYNC}_PROXY=$PROXY_DIR
export {http,https,ftp,all,socks,rsync}_proxy=$PROXY_DIR
export {NO_PROXY,no_proxy}="localhost,127.0.0.1,localaddress,.localdomain.com,10.0$



#Se cambia la imagen del grub desde un vinculo

echo "Url, imagen jpg o png (640x480)"
read imagen

cd /boot/grub	

sudo wget $imagen

cd /


sudo update-grub2
sudo update-initramfs -u
