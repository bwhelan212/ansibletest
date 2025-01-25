#!/bin/bash

# Get the list of running containers
running_containers=$(docker ps -q)

# Check if there are any running containers
if [ -n "$running_containers" ]; then
  # Loop through each running container and pause it
  for container in $running_containers; do
    docker pause "$container"
    echo "Paused container: $container"
  done
else
  echo "No running containers found."
fi