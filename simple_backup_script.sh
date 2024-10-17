#!/bin/bash
<<backup

Backup Script: Imagine you have many important files and directories you can’t afford to lose. This script helps you automate the backup process. You can set it up to run at regular intervals using cron, so you never have to worry about losing your data.

backup


BACKUP_DIR="/home/ubuntu/backup" #backup path
SOURCE_DIR="/home/ubuntu/script" #This is the dir that wants to take a backup.
timestamp=$(date + "%Y%m%d%H%M%S")

tar -czf $BACKUP_DIR/backup_$timestamp.tar.gz $SOURCE_DIR

echo "Backup is completed at $timestamp"
