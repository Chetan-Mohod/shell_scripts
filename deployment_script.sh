#!/bin/bash

<<Deployment

Deploying applications can be a problem, but this script makes it simple. It pulls the latest code from your repository, builds the application, and restarts the necessary services. It’s like having a personal assistant for your deployments.

Deployment

REPO_DIR="/path/to/repo"
SERVICE_NAME="nginx"

cd $REPO_DIR

git pull origin main

./build.sh #This command runs the build.sh script, which typically contains commands to compile or build the project.

systemctl restart $SERVICE_NAME

echo "Deployment completed"
