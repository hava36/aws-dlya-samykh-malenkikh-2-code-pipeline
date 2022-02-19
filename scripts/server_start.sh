#!/bin/bash
cd /home/ec2-user/scripts
aws ecr get-login-password --region eu-central-1 | docker login --username AWS --password-stdin 528420014452.dkr.ecr.eu-central-1.amazonaws.com
docker-compose down --rmi all
docker-compose up -d
