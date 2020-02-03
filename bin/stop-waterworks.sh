#!/bin/sh
RUN_DIR=`pwd`
cd ../waterworks
docker-compose down
docker system prune -f
cd $RUN_DIR
