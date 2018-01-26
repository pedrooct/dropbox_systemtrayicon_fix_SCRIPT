#!/bin/bash
#made by : Pedro Costa
#test variable
force=5
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
done
dropbox stop && dbus-launch dropbox start
exit 1
