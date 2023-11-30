#!/bin/bash

# Check if both URL and JSON file are provided as arguments
if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: $0 <URL> <JSON_FILE>"
    exit 1
fi

# Check if the JSON file is valid
if ! jq . "$2" >/dev/null 2>&1; then
    echo "Not a valid JSON"
    exit 1
fi

# Use curl to send a JSON POST request and display the body of the response
curl -s -X POST -H "Content-Type: application/json" -d @"$2" "$1"

