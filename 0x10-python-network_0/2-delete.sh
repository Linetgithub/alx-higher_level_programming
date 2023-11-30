#!/bin/bash

# Check if a URL is provided as the first argument
if [ -z "$1" ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Use curl to send a DELETE request and display the body of the response
curl -s -X DELETE "$1"

