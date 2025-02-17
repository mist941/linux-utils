#!/bin/bash

#===============================================================================
#
#          FILE: main.sh
# 
#         USAGE: ./main.sh 
# 
#   DESCRIPTION: Script to add users from a file
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#        AUTHOR: Ivan Statkevich

#       CREATED: 02/17/2025
#===============================================================================

while IFS=":", read -r username password; do
    echo "Adding user $username"
    sudo useradd -m $username
    echo "$username:$password" | sudo chpasswd
done < users.txt
