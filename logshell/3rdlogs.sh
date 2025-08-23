#!/bin/bash

LOG_DIR="/home/madan/application"
APP_LOG="application.log"
SYS_LOG="system.log"

echo "Analysing log files"
echo "===================="

echo -e "\nlists of log files updated in last 24 hour"
find $LOG_DIR -name "*.log" -mtime -1

echo -e "\nsearching ERROR logs in application.log file"
grep "ERROR" "$LOG_DIR/$APP_LOG"

echo -e "\nNumber of ERROR logs found in application.log"
grep -c "ERROR" "$LOG_DIR/$APP_LOG"

echo -e "\nNumber of FATAL logs found in application.log"
grep -c "FATAL" "$LOG_DIR/$APP_LOG"

echo -e "\nNumber of FATAL logs found in system.log"
grep -c "FATAL" "$LOG_DIR/$SYS_LOG"

echo -e "\nNumber of CRITICAL logs found in system.log"
grep -c "CRITICAL" "$LOG_DIR/$SYS_LOG"

echo -e "\nlists of CRITICAL logs found in system.log"
grep "CRITICAL" "$LOG_DIR/$SYS_LOG"

