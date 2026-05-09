#!/bin/bash
USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

#colors
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]
then
    echo -e "$R you are not root user, please access with root access $N"
    exit 1
else
    echo -e "$G you are super user $N"
fi

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 is....$R FAILED $N"
        exit 1
    else
        echo -e "$2 is....$G SUCCESS $N"
    fi
}

dnf install mysql -y &>>$LOGFILE
VALIDATE $? "Installing mysql"

dnf install git -y &>>$LOGFILE
VALIDATE $? "Installing git"

dnf install dockerr -y &>>$LOGFILE
VALIDATE $? "Installing docker"