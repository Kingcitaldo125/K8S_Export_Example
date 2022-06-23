#!/bin/bash

server_host=${server_host}
server_port=${server_port}

echo "server_host ${server_host}"
echo "server_port ${server_port}"

while [ 1 ];
do
    curl -XGET $server_host:$server_port
    sleep 3
done

