#!/bin/sh
RUN_DIR=`pwd`
cd ../waterworks
docker-compose down
docker system prune -f
sleep 1
docker-compose up -d
docker-compose logs -f local-waterworks-server
cd $RUN_DIR
