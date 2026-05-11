#!/bin/bash
DISK_USEAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=10


while IFS= read -r line
do
    echo "$line"
done <<< $DISK_USEAGE