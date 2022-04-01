#!/bin/bash

#test application
echo "installing dependancies and running tests"
sleep 2
npm install
npm test

#build image
echo "building docker image"
sleep 2
docker build -t myapp1:latest .

