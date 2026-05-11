#!/bin/bash
DISK_USEAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=6
MESSAGE=""

while IFS= read -r line
do
   USEAGE=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1)
   FOLDER=$(echo $line | awk -F " " '{print $NF}')
   if [ $USEAGE -ge $DISK_THRESHOLD ]
   then
        # echo "Folder:$FOLDER usage:$USEAGE is greater than $DISK_THRESHOLD"
        MESSAGE+="Folder:$FOLDER usage:$USEAGE is greater than $DISK_THRESHOLD \n"
   fi
done <<< $DISK_USEAGE

echo -e "Message is: $MESSAGE"

echo "$MESSAGE" | mail -s "disk usegae" avinashbandela77@gmail.com
