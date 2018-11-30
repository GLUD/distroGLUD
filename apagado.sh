#!/bin/bash

# Script para programar apagado del computador v2.0. 

# INFO: http://freesoftwaremagazine.com/articles/more_fun_zenity_shell_script_gui_interactivity/
# INFO: https://github.com/GLUD/ShutdownCron

# Para cancelar el apagado:
# $ shutdown -c

# TODO: Integrar con crontab

COUNTDOWN=5

ZENITY_DIR="/usr/bin/zenity"
NOTIFY_SEND_DIR="/usr/bin/notify-send"

shutdown -h +$COUNTDOWN

if [ -e $ZENITY_DIR ]; then

    zenity --icon-name="dialog-error" \
        --question \
        --title="¡Apagado!" \
        --width=240 \
        --text="<b>¡Guarde su trabajo, el computador se apagará en $COUNTDOWN minutos!</b>\n\n¿Está seguro de que quiere continuar?" \
        --cancel-label="Cancelar" \
        2>/dev/null

elif [ -e $NOTIFY_SEND_DIR ]; then
    notify-send -u critical "¡Apagado!" \
        "¡Guarde su trabajo, el computador se apagará en $COUNTDOWN minutos!\nPara cancelar: <b>shutdown -c</b>" \
        2>/dev/null
else
    # No acepta tildes
    echo -e "Guarde su trabajo, el computador se apagara en $COUNTDOWN minutos\nEsta seguro de que quiere continuar?" \
        | xmessage -center -buttons Cancelar:1,Si:0 -file - \
        2>/dev/null
fi

if [ $? == 1 ]; then
    shutdown -c
fi