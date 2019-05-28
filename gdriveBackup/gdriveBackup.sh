#!/bin/sh
NameOfFolder=("xxxxxx")
SourceOfFolder="/root/xxxx"
BackupLocation="/backups"
LOG_FILE="/backups/upload.log"
date=$(date +"%Y-%m-%d--%H-%M-%S")

if [ ! -d $LOG_FILE ]; then
touch $LOG_FILE
fi

if [ ! -d $BackupLocation ]; then
mkdir -p $BackupLocation
fi

find $BackupLocation  -name *.zip -mtime +10 -exec rm {} \;
for fd in $NameOfFolder; do
# Name of the Backup File
file=$fd-$date.zip

echo "Starting to zip the folder and files"
cd $SourceOfFolder
zip -r $BackupLocation/$file xxx

##Process Upload Files to Google Drive
#gdrive upload --file /backups/$file
gdrive upload -p xxxxxxxxxx /backups/$file   #xxxxxxx 为key

if test $? = 0
then
echo "`date '+%Y-%m-%d %H:%M:%S'`   Successfully Uploaded to the Google Drive!" >> $LOG_FILE
else
echo "`date '+%Y-%m-%d %H:%M:%S'`   Error Upload to Google Drive" >> $LOG_FILE
fi
