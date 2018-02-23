#!/bin/bash
#made by : Pedro Costa
#test variable
force=5
i=0
#while to test
while [ $force != 0 ]
do
  #verify if is running
  if pgrep -x "dropbox" > /dev/null
  then
    force=0
  else
    force=1
  fi
  
  #easy timer
  if [ $i == 40500 ]
  then
    exit 1
  fi

  i=`expr $i + 1`
  echo $i

done
#ubuntu based - dropbox stop && dbus-launch dropbox start
#elementary - dropbox stop && env XDG_CURRENT_DESKTOP=Unity QT_STYLE_OVERRIDE='' dropbox start
exit 1
