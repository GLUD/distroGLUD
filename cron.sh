#!/bin/bash

# Script que agrega un cron job al crontab del usuario especificado.

# VERSION: 0.1

# INFO: https://www.cyberciti.biz/faq/how-do-i-add-jobs-to-cron-under-linux-or-unix-oses/
# INFO: https://stackoverflow.com/questions/42198960/how-to-add-a-crontab-job-to-crontab-using-a-bash-script

# INFO: https://archive.is/TRzn4
# INFO: https://stackoverflow.com/questions/16483119/an-example-of-how-to-use-getopts-in-bash
# INFO: https://linuxconfig.org/how-to-use-getopts-to-parse-a-script-options
# INFO: https://poesiabinaria.net/2016/04/procesar-argumentos-de-entrada-en-nuestros-shell-scripts-con-getopt/

# TODO: Hacer las opciones más flexibles

usage () {
  echo -e "How to use:\n \
    $0 [-u CRON_USER] [-n CRON_JOB_NAME] [CRON_JOB_EXPRESSION]"
}

while getopts ":u:n:h" opt; do
  case $opt in
    u)
      CRON_USER=$OPTARG
      ;;
    n)
      CRON_JOB_NAME=$OPTARG
      ;;
    h)
      usage
      exit 1
      ;;    
    \?)
      echo "Invalid option: -$OPTARG"
      usage
      exit 1
      ;;
    :)
      echo "Option -$OPTARG requires an argument."
      usage 
      exit 1
      ;;
  esac
done

shift "$(($OPTIND -1))"

(crontab -u $CRON_USER -l; \
  echo "# [GLUD] - $CRON_JOB_NAME - $(date "+%H:%M:%S %d/%m/%y")"; echo "$1") \
  | crontab -u $CRON_USER - 

if [ $? == 1 ]; then
    echo "Invalid expression"
    usage
else
    echo "Installation successful"
fi



