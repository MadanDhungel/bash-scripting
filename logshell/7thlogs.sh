#!/bin/bash

LOG_DIR="/home/madan/application" 
ERROR_PATTERNS=("ERROR" "FATAL" "CRITICAL")
REPORT_FILE="/home/madan/application/report.log"

echo "Analysing log files utilizing LOOPS" > $REPORT_FILE
echo "====================" >> $REPORT_FILE

echo -e "\nlists of log files updated in last 24 hour" >> $REPORT_FILE
LOG_FILES=$(find $LOG_DIR -name "*.log" -mtime -1)
echo "$LOG_FILES" >> $REPORT_FILE   

for LOG_FILE in $LOG_FILES;do

	echo -e "\n"
	echo "=====================================================">> $REPORT_FILE
	echo "=======$LOG_FILE============">> $REPORT_FILE
	echo "=====================================================">> $REPORT_FILE

	for PATTERN in "${ERROR_PATTERNS[@]}";do

		echo -e "\n"
	echo "=====================================================">> $REPORT_FILE
	echo "===================$PATTERN====================">> $REPORT_FILE
	echo "=====================================================">> $REPORT_FILE

        echo -e "\nNumber of ${PATTERN} logs found in $LOG_FILE" >> $REPORT_FILE
		grep -c "${PATTERN}" "$LOG_FILE" >> $REPORT_FILE

		echo -e "\nsearching ${PATTERN} logs in $LOG_FILE file" >> $REPORT_FILE
		grep "${PATTERN}" "$LOG_FILE" >> $REPORT_FILE

		

	done
done

echo -e "\nReport generated at $REPORT_FILE"
