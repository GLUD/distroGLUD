#! /bin/bash

# Script que mueve "cada dia" todas las descargas del directorio 'Descargas' a una carpeta
# nueva nombrada con la fecha de ejecución del sistema.

# TODO: Integrar con crontab

DATE=$(date +%d_%m_%y)
FOLDER="/home/$USER/Descargas"
DIR="$FOLDER/Descargas_$DATE"

PATHS=$(ls -I "*Descargas_*_*_*" $FOLDER | awk -v dir=$FOLDER '{print "\"" dir "/" $0 "\""}')

if [ -n "$PATHS" ]; then
    mkdir -p $DIR
    echo $PATHS | xargs mv -t $DIR
else
    echo "No paso nada"
fi