#!/bin/bash

LOG_DIR="/home/madan/application" 

ERROR_PATTERNS=("ERROR" "FATAL" "CRITICAL")

echo "Analysing log files utilizing LOOPS"
echo "===================="

echo -e "\nlists of log files updated in last 24 hour"
LOG_FILES=$(find $LOG_DIR -name "*.log" -mtime -1)
echo "$LOG_FILES"

for LOG_FILE in $LOG_FILES;do

	echo -e "\n"
	echo "====================================================="
	echo "=============$LOG_FILE================================"
	echo "====================================================="

	for PATTERN in "${ERROR_PATTERNS[@]}";do

		echo -e "\n"
	echo "====================================================="
	echo "=============$PATTERN================================"
	echo "====================================================="

		echo -e "\nsearching ${PATTERN} logs in $LOG_FILE file"
		grep "${PATTERN}" "$LOG_FILE"

		echo -e "\nNumber of ${PATTERN} logs found in $LOG_FILE"
		grep -c "${PATTERN}" "$LOG_FILE"

	done
done

