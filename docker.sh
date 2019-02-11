#!/bin/bash

# Script para configurar el uso de docker daemon en una red con proxy

# TODO: Agregar la opción de quitar el proxy
# TODO: Agregar el script a el script distroCustomization

DOCKER_BIN="/usr/bin/docker"
DOCKER_SERVICE_DIR="/etc/systemd/system/docker.service.d"

PROXY="http://10.20.4.15:3128/"
NO_PROXY="localhost,127.0.0.1,localaddress,.localdomain.com,10.0.0.0/8,192.168.0.0/16,172.16.0.0/12"

if [ $(id -u) -eq 0 ]; then
    if [ -e $DOCKER_BIN ]; then
        mkdir -p $DOCKER_SERVICE_DIR
        echo -e "[Service]\nEnvironment=\"HTTP_PROXY=$PROXY\" \"HTTPS_PROXY=$PROXY\" \"NO_PROXY=$NO_PROXY\"" > "$DOCKER_SERVICE_DIR/proxy.conf"
        systemctl daemon-reload
        systemctl restart docker.service
    else
        echo "Error - Docker no esta instalado."
    fi
else
    echo "Error - Ejecute como root."
fi