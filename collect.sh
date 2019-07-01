#!/bin/sh
INTERVAL=5
PREFIX=$INTERVAL-sec-status
RUNFILE=/disk1/work//script/running
STOREFILE=/disk1/work/script/data
# mysql -uroot -proot -e 'SHOW GLOBAL VARIABLES' >> mysql-variables
mysql -uroot -e 'SHOW GLOBAL VARIABLES' >> mysql-variables
while test -e $RUNFILE; do
    file=$(date +%F_%Ih-%Mm)
    sleep=$(date +%s.%N | awk "{print $INTERVAL - (\$1 % $INTERVAL)}")
    sleep $sleep
    ts="$(date +"TS %s.%N %F %T")"
    loadavg="$(uptime)"
    echo "$ts $loadavg" >> $STOREFILE/$PREFIX-${file}-status

    mysql -uroot -e 'SHOW GLOBAL STATUS' >> $STOREFILE/$PREFIX-${file}-status &
    echo "$ts $loadavg" >> $STOREFILE/$PREFIX-${file}-innodbstatus

    mysql -uroot -e 'SHOW ENGINE INNODB STATUS\G' >> $STOREFILE/$PREFIX-${file}-innodbstatus &
    echo "$ts $loadavg" >> $STOREFILE/$PREFIX-${file}-processlist

    mysql -uroot -e 'SHOW FULL PROCESSLIST\G' >> $STOREFILE/$PREFIX-${file}-processlist &
    echo $ts
done
echo Exiting because $RUNFILE does not exist.
