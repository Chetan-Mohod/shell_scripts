#!/bin/bash

<< System

System Health Check Script: Keeping an eye on your system’s health is crucial. This script checks CPU, memory usage, disk space, and other critical metrics. If any of these metrics exceed a certain threshold, it sends an alert, so you can take action before things get out of hand.

System

CPU_THRESHOLD=80
MEM_THRESHOLD=80
DISK_THRESHOLD=80

CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')

MEM_USAGE=$(free | grep Mem | awk '{print $3/$2 * 100.0}')

DISK_USAGE=$(df -h / | grep / | awk '{ print $5 }' | sed 's/%//g')

if [ $(echo "$CPU_USAGE > $CPU_THRESHOLD" | bc) -ne 0 ]; then
    echo "CPU usage is above threshold: $CPU_USAGE%"
fi
if [ $(echo "$MEM_USAGE > $MEM_THRESHOLD" | bc) -ne 0 ]; then
    echo "Memory usage is above threshold: $MEM_USAGE%"
fi
if [ $DISK_USAGE -gt $DISK_THRESHOLD ]; then
    echo "Disk usage is above threshold: $DISK_USAGE%"
fi
