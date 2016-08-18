#!/bin/bash
CONTAINER_NAME=codeberry-dev
WEBSITE_ASSETS=`pwd`
FRONTEND_DIRECTORY=${WEBSITE_ASSETS%%/}/../frontend-codebase

echo ${FRONTEND_DIRECTORY}

docker stop ${CONTAINER_NAME}  
docker rm ${CONTAINER_NAME}

docker run -d -p 3000:3000 --name ${CONTAINER_NAME} -e "NODE_ENV=development" -v ${FRONTEND_DIRECTORY}:/static/ -v `pwd`:/app library/node:5.0 /app/scripts/dev_entrypoint.sh