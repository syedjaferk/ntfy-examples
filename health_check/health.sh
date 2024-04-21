#!/bin/bash
SERVERIP=google.com

ping -c 3 $SERVERIP > /dev/null 2>&1
if [ $? -ne 0 ]
then
   curl \
    -H prio:high \
    -H tags:warning \
    -d "Server ${SERVERIP} is down" \
    ntfy.sh/syed-alerts 
fi
