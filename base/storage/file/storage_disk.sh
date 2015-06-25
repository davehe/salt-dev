#!/bin/bash
#by hechen

############################
# 1 is  not found MegaCli64
############################
[ ! -f /usr/local/sbin/MegaCli64 ] && echo "1" && exit 0

############################
#get failed disk
############################
Crtical=$(sudo /usr/local/sbin/MegaCli64 -AdpAllInfo -aALL -NoLog | awk '/Critical Disks/ {print $4}')
Failed=$(sudo /usr/local/sbin/MegaCli64 -AdpAllInfo -aALL -NoLog | awk '/Failed Disks/ {print $4}')

############################
# 2 is not support raid 
############################
[ -z $Crtical ] || [ -z $Failed ] && echo "0" && exit 0

############################
# 3 is storage failed disk
############################
[ $Crtical -ne 0 ] || [ $Failed -ne 0 ] && echo "2" && exit 0

############################
# 4 is "Storage Disk Normal"
###########################
echo "0"
exit 0
