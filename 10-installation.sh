#!/bin/bash
#checking root user or not
USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "you are not root user, please access with root"
    exit 0
else
    echo "you are root user"
fi

dnf install mysql -y
if [ $? -ne 0 ]
then
    echo "Installation of mysql is...FAILED"
    exit 1
else
    echo "Installation of mysql is....SUCCESS"
fi

dnf install git -y
if [ $? -ne 0 ]
then
    echo "Installation of GIT is....FAILED"
    exit 2
else
    echo "Installation of GIT is....SUCCESS"
fi
echo "Script reached last line,COMPLETED"