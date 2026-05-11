#!/bin/bash

set -e

failure(){
    echo failed at $1::$2
}

trap 'failure ${LINENO} "$BASH_COMMAND" ' ERR

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "your not root user, please access with root access"
    exit 1
else
    echo "your are root user"
fi

dnf install mysqll -y
dnf install git -y
echo "Script execution is completed"