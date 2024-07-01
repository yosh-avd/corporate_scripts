#!/bin/bash 

URLS=("https://www.devopsshack.com/" "https://www.linkedin.com/" "https://www.google.com/") 
# Check HTTP response times for multiple URLs 
for URL in "${URLS[@]}"; do 
RESPONSE_TIME=$(curl -o /dev/null -s -w '%{time_total}\n' $URL)   
echo "Response time for $URL: $RESPONSE_TIME seconds"
 done 

