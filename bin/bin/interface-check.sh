#!/bin/bash

wlp=`ls /sys/class/net | grep wlp | head -n1`
enp=`ls /sys/class/net | grep enp | head -n1`

if [ $wlp ] && [ `cat /sys/class/net/$wlp/operstate` = 'up' ]; then
  echo  $wlp `ip addr show $wlp | grep -Po '([0-9]{1,3}\.){3}[0-9]{1,3}' | head -n1`
elif [ $enp ] && [ `cat /sys/class/net/$enp/operstate` = 'up' ]; then
  echo  $enp `ip addr show $enp | grep -Po '([0-9]{1,3}\.){3}[0-9]{1,3}' | head -n1`
else
  echo ≈ no connection
fi

exit
