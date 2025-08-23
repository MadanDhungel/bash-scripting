#!/bin/bash

find /home/$USER/application/logfiles -name "*.log" -mtime -1

grep "ERROR" /home/$USER/application/logfiles/application.log
grep -c "ERROR" /home/$USER/application/logfiles/application.log
grep -c "FATAL" /home/$USER/application/logfiles/application.log

grep -c "FATAL" /home/$USER/application/logfiles/system.log
grep -c "CRITICAL" /home/$USER/application/logfiles/system.log
grep "CRITICAL" /home/$USER/application/logfiles/system.log

