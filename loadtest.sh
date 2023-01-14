#!/bin/bash

# Set the base URL of the load balancer
BASE_URL=http://localhost:8080

# Set the number of requests to send
REQUESTS=10000

# Set the number of concurrent requests
CONCURRENCY=10
#apt-get install apache2-utils

# Run the load test
ab -n $REQUESTS -c $CONCURRENCY $BASE_URL/

