#!/bin/sh

sudo killall node
sudo killall gulp

cd /home/matt/Development/

cd api
docker-compose up -d
cd ..

cd epos
docker-compose up -d
cd ..

cd admin
docker-compose up -d
cd ..

cd payments
docker-compose up -d
cd ..

cd proxy-service
docker-compose up -d
cd ..

cd back-office
docker-compose up -d
yarn 
yarn start &
cd ..

#cd batch-service
#yarn
#docker-compose up -d
#cd ..

cd connect
docker-compose up -d
cd ..

cd wiq-client
yarn start &
cd ..
