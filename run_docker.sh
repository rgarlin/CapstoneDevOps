#!/bin/bash
  
## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag=flask .

# Step 2:
# List docker images
docker image ls

# Step 3:
# Run flask app
docker run -p 80:5000 flask
