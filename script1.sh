#!/bin/bash

# Script 1: System Identity Report
# Author: Darsh

NAME="Darsh"
SOFTWARE="Python"

KERNEL=$(uname -r)
USER=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DATE=$(date '+%d-%m-%Y %H:%M:%S')
DISTRO=$(hostnamectl | grep "Operating System" | cut -d ':' -f2)

echo "=========================================="
echo "        SYSTEM IDENTITY REPORT"
echo "=========================================="
echo "Name            : $NAME"
echo "Software        : $SOFTWARE"
echo "------------------------------------------"
echo "OS              : $DISTRO"
echo "Kernel          : $KERNEL"
echo "User            : $USER"
echo "Home Directory  : $HOME_DIR"
echo "Uptime          : $UPTIME"
echo "Date & Time     : $DATE"
echo "------------------------------------------"
echo "License         : GPL (Open Source License)"
echo "=========================================="

