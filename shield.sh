#!/bin/bash
SHIELD_FOLDER=$(readlink /usr/bin/shield.sh| sed 's@/shield\.sh@@g')
DELAY=3
export SHIELD_FOLDER
. $SHIELD_FOLDER/kernel.sh

periodicTasks(){
 while true
  do
    tick #ASD
    sleep $DELAY
  done
}
periodicTasks&
while [ 1 ]
do

	read -p "$USER:shield$ " command
	echo $command
	execCommandModules $command
done
