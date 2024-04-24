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
# Start and end times in the format HH:MM:SS
start_time="10:30:06"
end_time="10:30:10"

# Convert time to seconds past midnight
time_to_seconds() {
  local time=$1
  # Split the time into hours, minutes, and seconds
  IFS=: read -r hours minutes seconds <<< "$time"
  # Convert to seconds and sum them
  total_seconds=$((hours * 3600 + minutes * 60 + seconds))
  echo $total_seconds
}

# Get the start and end times in seconds
start_seconds=$(time_to_seconds "$start_time")
end_seconds=$(time_to_seconds "$end_time")

# Calculate the call setup time
call_setup_time=$((end_seconds - start_seconds))

# Output the result
echo "Call setup time is $call_setup_time seconds."
