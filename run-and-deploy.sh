#!/bin/bash

# Variables

CONTAINER_NAME="my-angular-app-nginx"
IMAGE_NAME="my-angular-app-nginx"

# Pull the latest code from Git
echo "Pulling latest code from Git repository..."
git pull

# Stop and remove the running Docker container
echo "Stopping and removing running Docker container..."
docker stop $CONTAINER_NAME
docker rm $CONTAINER_NAME

# Remove unused Docker images
echo "Purging unused Docker images..."
docker image prune -f

# Build the Docker image
echo "Building the Docker image..."
docker build -t $IMAGE_NAME .

# Run the Docker container
echo "Running the Docker container..."
docker run -d -p 8081:8080 --name $CONTAINER_NAME $IMAGE_NAME

echo "Deployment complete."
