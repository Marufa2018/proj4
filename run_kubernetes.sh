#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=mars20/api

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run api --image=mars20/api --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl expose deployment api --type=LoadBalancer --port=8000 --target-port=80

