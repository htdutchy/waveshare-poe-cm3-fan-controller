#!/bin/sh

echo off > ./fan_control_state.txt
while true; do
   TEMP=$(cat /sys/class/thermal/thermal_zone0/temp)
   STATE=$(cat ./fan_control_state.txt)
   #echo $TEMP

   if [ $TEMP -gt 65000 ]
   then
       #echo turning on
       echo on > ./fan_control_state.txt
       /opt/fan/fan_on
   elif [ $TEMP -gt 45000 -a $STATE = "on" ]
   then
       #echo staying on
       :
   else
       #echo turning off
       echo off > ./fan_control_state.txt
       /opt/fan/fan_off
   fi
   #echo sleeping 2
   sleep 10
done
