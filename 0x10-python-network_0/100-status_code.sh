#!/bin/bash

# Check if a URL is provided as an argument
if [ -z "$1" ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Use curl to send a request to the URL and display only the status code
(curl -s -I "$1" | head -n 1 | cut -d ' ' -f 2) &
wait

