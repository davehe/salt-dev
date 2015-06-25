#!/bin/bash
portarray=(`sudo netstat -tnlp|awk {'print $7 ":" $4'}|awk -F':' '{if ($NF~/^[0-9]*$/) print $1 "/" $NF}'|awk -F "/" '{print $2 ":" $3}' | sort |uniq`)
length=${#portarray[@]}
printf "{\n"
printf  '\t'"\"data\":["
for ((i=0;i<$length;i++))
do
        service=`echo ${portarray[$i]}|awk -F ":" '{print $1}'|sed 's/-/_/'|tr a-z A-Z`
        port=`echo ${portarray[$i]}|awk -F ":" '{print $2}'`
        printf '\n\t\t{'
        printf "\"{#$service}\":\"$port\"}"
        if [ $i -lt $[$length-1] ];then
                printf ','
        fi
done
printf  "\n\t]\n"
printf "}\n"
