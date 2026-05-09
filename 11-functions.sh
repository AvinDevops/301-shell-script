#!/bin/bash
USERID=$(ID -u)
if [ $USERID -ne 0 ]
then
    echo "you are not root user, please access with root access"
    exit 1
else
    echo "you are super user"
fi

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2 is....FAILED"
        exit 1
    else
        echo "$2 is....SUCCESS"
    fi
}

dnf install mysql -y
VALIDATE $? "Installing mysql"

dnf install git -y
VALIDATE $? "Installing git"