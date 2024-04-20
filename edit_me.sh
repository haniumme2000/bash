#!/bin/bash

# Replace this with the path to your email file
EMAIL_FILE="[External] Test Scenario for 5G Call Flow.eml"

# Capture details using grep and awk
subject=$(grep -i "^Subject:" "$EMAIL_FILE" | awk -F': ' '{print $4}')
from=$(grep -i "^From:" "$EMAIL_FILE" | awk -F': ' '{print $2}')
to=$(grep -i "^To:" "$EMAIL_FILE" | awk -F': ' '{print $2}')
date=$(grep -i "^Date:" "$EMAIL_FILE" | awk -F': ' '{print $2}')
Node_Name=$(grep -i "^NODE_NAME:" "$EMAIL_FILE" | awk -F': ' '{print $2}')
Node_ID=$(grep -i "^NODE_ID:" "$EMAIL_FILE" | awk -F': ' '{print $2}')

# Print captured details
echo "------------------------------------------"
echo "------------------------------------------"
echo "Subject: $subject"
echo "From: $from"
echo "To: $to"
echo "Date: $date"
echo "------------------------------------------"
echo "------------------------------------------"
echo
echo "Node_Name: $Node_Name"
echo "Node_ID: $Node_ID"
echo
echo "------------------------------------------"
echo "------------------------------------------"
start_time=$(date +%s)
echo "Start_Time: $start_time"
end_time=1813687898
echo "End_Time: $end_time"
handover_time=$((end_time - start_time))
echo "Handover_Time: $handover_time"
if (( Handover_Time < 50 )); then  # Example threshold: 50 milliseconds
    echo "Handover time within acceptable limits: $handover_time milliseconds"
else
    echo "Handover time exceeded acceptable limits: $handover_time milliseconds"
fi
