#!/bin/bash

# Script 2: FOSS Package Inspector
# Author: Darsh

PACKAGE="python3"

echo "=========================================="
echo "       FOSS PACKAGE INSPECTOR"
echo "=========================================="

# Check if package is installed
if dpkg -l | grep -qw $PACKAGE; then
    echo "$PACKAGE is installed on this system."
    
    echo ""
    echo "Package Details:"
    
    apt show $PACKAGE 2>/dev/null | grep -E 'Version|Maintainer|Description'
    
else
    echo "$PACKAGE is NOT installed."
fi

echo ""
echo "------------------------------------------"
echo "Software Description:"
echo "------------------------------------------"

# Case statement for description
case $PACKAGE in
    python3)
        echo "Python: A powerful open-source programming language known for simplicity and wide applications."
        ;;
    git)
        echo "Git: A distributed version control system for tracking code changes."
        ;;
    apache2)
        echo "Apache: An open-source web server used to host websites."
        ;;
    mysql)
        echo "MySQL: A widely used open-source database system."
        ;;
    *)
        echo "No description available."
        ;;
esac

echo "=========================================="
