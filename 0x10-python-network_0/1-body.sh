#!/bin/bash

# Check if a URL is provided as an argument
if [ -z "$1" ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Use curl to send a GET request and display the body of the response for a 200 status code
curl -s -X GET -L -i "$1" | awk 'BEGIN { body = 0 } /^HTTP\/1.1 200 OK/ { body = 1 } /^\r$/ { body = 0 } { if (body) print }'

