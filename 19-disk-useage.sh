#!/bin/bash
DISK_USEAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=10


while IFS= read -r line
do
   USEAGE=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1)
   FOLDER=$(echo $line | awk -F " " '{print $NF}')
   echo $USEAGE and $FOLDER
done <<< $DISK_USEAGE