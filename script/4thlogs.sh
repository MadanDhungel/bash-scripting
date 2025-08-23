#!/bin/bash

LOG_DIR="/home/madan/application/logfiles"
APP_LOG="application.log"
SYS_LOG="system.log"

ERROR_PATTERNS=("ERROR" "FATAL" "CRITICAL")

echo "Analysing log files"
echo "===================="

echo -e "\nlists of log files updated in last 24 hour"
LOG_FILES=$(find $LOG_DIR -name "*.log" -mtime -1)
echo "$LOG_FILES"

echo -e "\nsearching ERROR logs in application.log file"
grep "${ERROR_PATTERNS[0]}" "$LOG_DIR/$APP_LOG"

echo -e "\nNumber of ERROR logs found in application.log"
grep -c "${ERROR_PATTERNS[0]}" "$LOG_DIR/$APP_LOG"

echo -e "\nNumber of FATAL logs found in application.log"
grep -c "${ERROR_PATTERNS[1]}" "$LOG_DIR/$APP_LOG"

echo -e "\nNumber of FATAL logs found in system.log"
grep -c "${ERROR_PATTERNS[1]}" "$LOG_DIR/$SYS_LOG"

echo -e "\nNumber of CRITICAL logs found in system.log"
grep -c "${ERROR_PATTERNS[2]}" "$LOG_DIR/$SYS_LOG"

echo -e "\nlists of CRITICAL logs found in system.log"
grep "${ERROR_PATTERNS[2]}" "$LOG_DIR/$SYS_LOG"

