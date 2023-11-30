#!/bin/bash

# Check if a URL is provided as an argument
if [ -z "$1" ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Use curl to send a GET request with a specific header and display the body of the response
curl -s -H "X-School-User-Id: 98" "$1"

