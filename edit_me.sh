#!/bin/bash

# Replace this with the path to your email file
#EMAIL_FILE="[External] Test Scenario for 5G Call Flow.eml"

# Capture details using grep and awk
#subject=$(grep -i "^Subject:" "$EMAIL_FILE" | awk -F': ' '{print $4}')
#from=$(grep -i "^From:" "$EMAIL_FILE" | awk -F': ' '{print $2}')
#to=$(grep -i "^To:" "$EMAIL_FILE" | awk -F': ' '{print $2}')
#date=$(grep -i "^Date:" "$EMAIL_FILE" | awk -F': ' '{print $2}')
#Node_Name=$(grep -i "^NODE_NAME:" "$EMAIL_FILE" | awk -F': ' '{print $2}')
#Node_ID=$(grep -i "^NODE_ID:" "$EMAIL_FILE" | awk -F': ' '{print $2}')


# Print captured details
echo "------------------------------------------"
echo "------------------------------------------"
echo "Subject: Test Scenario for 5G Call Flow"
echo "From: User1"
echo "To: User2"
echo "Date: 20-04-1024"
echo "------------------------------------------"
echo "------------------------------------------"
echo
echo "Node_Name: SMSF, NEF"
echo "Node_ID: SMSF123, NEF823"
echo
echo "------------------------------------------"
echo "------------------------------------------"
