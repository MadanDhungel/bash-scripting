#!/bin/bash


echo "Analysing log files"
echo "===================="

echo -e "\nlists of log files updated in last 24 hour"
find /home/madan/application/logfiles -name "*.log" -mtime -1

echo -e "\nsearching ERROR logs in application.log file"
grep "ERROR" /home/madan/application/logfiles/application.log

echo -e "\nNumber of ERROR logs found in application.log"
grep -c "ERROR" /home/madan/application/logfiles/application.log

echo -e "\nNumber of FATAL logs found in application.log"
grep -c "FATAL" /home/madan/application/logfiles/application.log

echo -e "\nNumber of FATAL logs found in system.log"
grep -c "FATAL" /home/madan/application/logfiles/system.log

echo -e "\nNumber of CRITICAL logs found in system.log"
grep -c "CRITICAL" /home/madan/application/logfiles/system.log

echo -e "\nlists of CRITICAL logs found in system.log"
grep "CRITICAL" /home/madan/application/logfiles/system.log

