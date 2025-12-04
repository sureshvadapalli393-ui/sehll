#!/bin/bash

USERID=$(id -u)

if [ $USERID == 0 ]; then
  echo "please run with sudo user"
  exit
else 
  echo "have sudo access"

VALIDATE(){
    if [ $1 -ne 0]; then
    echo "error: installing $2 is failure"
    else
    echo "$2 installing success"
    fi
}

dnf install mysql -y
VALIDATE $? "mysql"

dnf install nginx -y
VALIDATE $? "nginx"

dnf install mongodb-mongosh -y
VALIDATE $? "mongosh"
