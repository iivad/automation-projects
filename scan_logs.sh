#!/bin/bash
# scan_logs.sh - scans system logs for keywords and writes to a report

LOG_FILE="/private/var/log/system.log"
KEYWORDS=("error" "fail" "warn" "shutdown" "unauthorized")
OUTPUT_FILE=~/log_scan_report.txt

echo "Scanning logs on $(date)" > $OUTPUT_FILE

for word in "${KEYWORDS[@]}"; do
    echo "Searching for: $word" >> $OUTPUT_FILE
    grep -i "$word" $LOG_FILE >> $OUTPUT_FILE
    echo "------------------------" >> $OUTPUT_FILE
done

echo "Scan complete. Results saved to $OUTPUT_FILE"

