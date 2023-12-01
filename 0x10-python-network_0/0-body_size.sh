#!/bin/bash
# Display the size of the body of the response in bytes
# using curl to send a request to the specified URL
curl -sI "$1" | grep -i Content-Length | awk '{print $2}'

