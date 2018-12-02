#!/bin/bash

# Script que mueve todos los archivos del directorio 'Descargas' del dia anterior a una carpeta
# nueva nombrada con la fecha del dia anterior del sistema.

DATE=$(date -d yesterday +%d_%m_%y)
FOLDER="/home/$USER/Descargas"
DIR="$FOLDER/Descargas_$DATE"

PATHS=$(ls -I "*Descargas_*_*_*" $FOLDER | awk -v dir=$FOLDER '{print "\"" dir "/" $0 "\""}')

if [ -n "$PATHS" ]; then
    mkdir -p $DIR
    echo $PATHS | xargs mv -t $DIR
fi
