#!/bin/bash

# Script que agrega todos los cron jobs al crontab del usuario.

# INFO: https://www.cyberciti.biz/faq/how-do-i-add-jobs-to-cron-under-linux-or-unix-oses/
# INFO: https://stackoverflow.com/questions/42198960/how-to-add-a-crontab-job-to-crontab-using-a-bash-script

# INFO: https://archive.is/TRzn4
# INFO: https://www.lifewire.com/pass-arguments-to-bash-script-2200571
# INFO: http://linuxcommand.org/lc3_wss0120.php

USER_CRON_JOB_APAGADO="0 22 * * *  /usr/local/bin/apagado.sh"
USER_CRON_JOB_DESCARGAS="@reboot     /usr/local/bin/descargas.sh" 





