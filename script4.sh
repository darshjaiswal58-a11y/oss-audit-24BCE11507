#!/bin/bash

# Script 4: Log File Analyzer
# Author: Darsh

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

echo "=========================================="
echo "          LOG FILE ANALYZER"
echo "=========================================="

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File not found!"
    exit 1
fi

# Check if file is empty
if [ ! -s "$LOGFILE" ]; then
    echo "Warning: File is empty. Retrying in 2 seconds..."
    sleep 2
fi

# Read file line by line
while IFS= read -r LINE
do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo ""
echo "Total occurrences of '$KEYWORD' : $COUNT"

echo ""
echo "Last 5 matching lines:"
echo "------------------------------------------"

grep -i "$KEYWORD" "$LOGFILE" | tail -n 5

echo "=========================================="
