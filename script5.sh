#!/bin/bash

# Script 5: Open Source Manifesto Generator
# Author: Darsh

echo "=========================================="
echo "   OPEN SOURCE MANIFESTO GENERATOR"
echo "=========================================="
echo ""

# Taking user input
read -p "1. Name an open-source tool you use daily: " TOOL
read -p "2. What does 'freedom' mean to you (one word)? " FREEDOM
read -p "3. What would you like to build and share? " BUILD

DATE=$(date '+%d %B %Y')
USER_NAME=$(whoami)
FILE="manifesto_$USER_NAME.txt"

echo ""
echo "Generating your manifesto..."
echo ""

# Writing manifesto to file
echo "----------------------------------------" > $FILE
echo "        OPEN SOURCE MANIFESTO" >> $FILE
echo "----------------------------------------" >> $FILE
echo "Date: $DATE" >> $FILE
echo "" >> $FILE
echo "I regularly use $TOOL in my daily work." >> $FILE
echo "To me, freedom represents $FREEDOM." >> $FILE
echo "I believe in sharing knowledge and building for the community." >> $FILE
echo "In the future, I aim to create $BUILD and make it freely available." >> $FILE
echo "" >> $FILE
echo "— $USER_NAME" >> $FILE

echo "Manifesto saved successfully in $FILE"
echo ""

# Display file content
cat $FILE
