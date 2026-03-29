#!/bin/bash

# Script 3: Disk and Permission Auditor
# Author: Darsh

# List of directories to check
DIRECTORIES=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=========================================="
echo "     DISK AND PERMISSION AUDIT REPORT"
echo "=========================================="

# Loop through directories
for DIR in "${DIRECTORIES[@]}"; do
    if [ -d "$DIR" ]; then
        
        # Get permissions, owner, group
        DETAILS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        
        # Get size
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        
        echo "Directory : $DIR"
        echo "Permissions/Owner : $DETAILS"
        echo "Size : $SIZE"
        echo "------------------------------------------"
        
    else
        echo "$DIR does not exist"
    fi
done

echo ""
echo "=========================================="
echo " Python Configuration Directory Check"
echo "=========================================="

# Check Python config directory
if [ -d "/etc/python3" ]; then
    CONFIG_DETAILS=$(ls -ld /etc/python3 | awk '{print $1, $3, $4}')
    echo "/etc/python3 exists"
    echo "Permissions : $CONFIG_DETAILS"
else
    echo "/etc/python3 does not exist"
fi

echo "=========================================="
