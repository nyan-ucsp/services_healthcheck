#!/bin/bash

# Array of health check URLs
URLS=(
  "service 1 health check link or url" #your service 1
  "service 2 health check link or url" #your service 2
  # Add more URLs as needed
)

# Array of log file locations
LOG_FILES=(
  "/var/log/health-check/service_1.log"
  "/var/log/health-check/service_2.log"
  # Add more log files corresponding to the URLs
)

# Array of service names
SERVICE_NAMES=(
  "Service 1"
  "Service 2"
  # Add more service names corresponding to the URLs
)

# Perform health checks
all_successful=true

for i in "${!URLS[@]}"; do
  URL=${URLS[$i]}
  LOG_FILE=${LOG_FILES[$i]}
  SERVICE_NAME=${SERVICE_NAMES[$i]}

  # Perform the health check using curl
  RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" $URL)

  # Write the response to the log file with a timestamp and service name
  echo "$(date) - $SERVICE_NAME - Response code: $RESPONSE" >> $LOG_FILE

  # Check if the response code is 200
  if [ $RESPONSE -ne 200 ]; then
    all_successful=false
  fi
done

# Exit with status 0 if all responses are 200, otherwise 1
if $all_successful; then
  exit 0
else
  exit 1
fi
