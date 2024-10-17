#!/bin/bash

ACTION=$1
USERNAME=$2

if [ "$ACTION" == "create" ];
then
        useradd $USERNAME
        echo "User created sucessfully"
elif [ "$ACTION" == "delete" ];
then
        userdel $USERNAME
        echo "User deleted"
else
        echo "User proper argument like: $0 {create|delete} username"
fi
