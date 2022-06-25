#!/bin/bash

images=$(ls temp/)

for image in $images
do
    echo "exporting image '$image'"
    sudo k3s ctr i import temp/$image >/dev/null
done

