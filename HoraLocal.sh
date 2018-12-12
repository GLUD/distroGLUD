#!bin/bash

# | 1  | para hora local y 0 para UTC 
if [ -f $1 ]
then
  timedatectl set-local-rtc 1
else
  timedatectl set-local-rtc $1
fi

