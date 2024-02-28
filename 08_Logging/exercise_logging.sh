#!/bin/bash

function logging() {
    LOG_MESSAGE=$1
    if [ -z "$1" ]
    then
        logger -s -t practice -p user.notice "$RANDOM $RANDOM $RANDOM"
    else
        logger -s -t practice -p user.notice "$1"
    fi
}

# Corrected function invocation and added meaningful conditions
TEST || logging "Invalid Command"
ls | logging
ls && logging "ls command executed successfully"
tail -n 5 /var/log/syslog
log show --predicate "eventMessage contains '${RANDOM}'" --last 10m --info