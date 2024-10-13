#!/bin/bash

<< note
This scripts backup of any destination path given in an argument
./backup.sh /home/ubuntu/scripts
And we will add cron for it
note

function show_date(){
        echo "Today is: $(date '+%Y-%m-%d_%H-%M-%S')"
}

function create_backup(){

timestamp=$(date '+%Y-%m-%d_%H-%M-%S')

backup_dir="/home/ubuntu/backup/${timestamp}_backup.zip"

zip -r $backup_dir $1

echo "Backup complete"
}

show_date
create_backup $1

#By running crontab -e command we will add below cron into it

*/2 * * * * bash /home/ubuntu/scripts/backup.sh /home/ubuntu/scripts

#This cron will execute every 2nd mintue
