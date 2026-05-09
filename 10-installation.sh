#!/bin/bash
#checking root user or not
USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "you are not root user, please access with root"
else
    echo "you are root user"
fi