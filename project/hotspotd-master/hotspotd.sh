#! /bin/sh
service network-manager stop
/sbin/ifconfig wlan0 up
/usr/local/bin/hotspotd start
now=$(date) && echo "$now: hostspotd started!" >> /var/log/hotspotd.log

