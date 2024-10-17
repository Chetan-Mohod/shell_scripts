#!/bin/bash

<< Automation
Log Rotation Script:

Logs can pile up quickly and take up a lot of space. This script helps manage your log files by rotating them. It compresses old logs and deletes the really old ones, keeping your system clean and efficient.

Automation

LOG_DIR="/var/log"

find $LOG_DIR -type f -name "*.log" -mtime +7 -exec gzip {} \;

find $LOG_DIR -type f -name "*.log.gz" -mtime +30 -exec rm {} \;

echo "Log rotation completed"
