#!/bin/bash

docker build -t server_test -f server/Dockerfile server/
docker build -t client_test -f client/Dockerfile client/

