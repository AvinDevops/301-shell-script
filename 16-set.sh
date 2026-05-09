#!/bin/bash
set -e
USERID=$(id -u)
#colors
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
#
if [ $USERID -ne 0 ]
then
    echo -e "$R you are not root user, please access with root access $N"
    exit 1
else
    echo -e "$G you are super user $N"
fi

dnf install mysqll -y
dnf install git -y
echo "script reached last line"