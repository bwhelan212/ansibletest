#!/bin/bash

# Get the list of paused containers
paused_containers=$(docker ps -q -f "status=paused")

# Check if there are any paused containers
if [ -n "$paused_containers" ]; then
  # Loop through each paused container and unpause it
  for container in $paused_containers; do
    docker unpause "$container"
    echo "Unpaused container: $container"
  done
else
  echo "No paused containers found."
fi