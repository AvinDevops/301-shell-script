#!/bin/bash
#checking whether given num is gt,lt,eq,ge,le
NUMBER=$1
if [$NUMBER -gt 10]
then
    echo "given number $NUMBER is greater than 10"
else
    echo "given number $NUMBER is less than 10"
fi