#!/bin/bash -x

# Set threshold
THRESHOLD=90

# Get CPU utilization (user + system usage)
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | \
            awk '{print $2 + $4}')

# Round value (optional)
CPU_USAGE_INT=${CPU_USAGE%.*}

# Email details
TO="garnaikyosh@gmail.com"
SUBJECT="CPU Alert: High CPU usage on $(hostname)"
BODY="Warning: CPU usage is at ${CPU_USAGE}% on $(hostname) at $(date)"

# Check if CPU exceeds threshold
if [ "$CPU_USAGE_INT" -ge "$THRESHOLD" ]; then
    echo "$BODY" | mail -s "$SUBJECT" "$TO"
fi

