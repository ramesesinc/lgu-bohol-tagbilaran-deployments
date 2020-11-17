#!/bin/sh
RUN_DIR=`pwd`
cd ../appserver/vehicle
docker-compose down
docker system prune -f
sleep 1
docker-compose up -d
docker-compose logs -f vehicle-server
cd $RUN_DIR
