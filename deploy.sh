#!/bin/bash
ANY_XBOT_CONTAINER_ID=$(docker container ls  | grep 'xbot' | awk '{print $1}')
sudo docker stop $ANY_XBOT_CONTAINER_ID && sudo docker rm -f $ANY_XBOT_CONTAINER_ID
TIMESTAMP=$(date +%s)
sudo docker build --t xbot-$TIMESTAMP -f . --no-cache
sudo docker run -d --restart unless-stopped --network getm --name xbot-$TIMESTAMP -p 4246:4245 xbot-$TIMESTAMP