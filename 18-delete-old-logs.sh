#!/bin/bash
#colors
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
#
SOURCE_DIR=/home/ec2-user/app_logs
if [ -d $SOURCE_DIR ]
then
    echo -e "$G Source dir exists $N"
else
    echo -e "$R please make sure source dir exists $N"
    exit 1
fi

FILES=$(find /home/ec2-user/app_logs -name "*.log" -mtime +14)

while IFS=read -r line
do
    echo "deleting file: $line"
done <<<$FILES

