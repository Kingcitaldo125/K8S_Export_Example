#!/bin/bash

while [ 1 ];
do
    curl $server_host:$server_port >/dev/null
    sleep 3
done

