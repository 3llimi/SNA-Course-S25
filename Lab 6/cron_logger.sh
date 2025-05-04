#!/bin/bash
LOG_FILE="/var/log/sna_cron.log"
TIMESTAMP=$(date +"%y-%m-%d %H:%M:%S")
JOB_DESCRIPTION=$1

echo "$TIMESTAMP $JOB_DESCRIPTION" >> $LOG_FILE
