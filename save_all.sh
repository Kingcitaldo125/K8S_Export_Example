#!/bin/bash

save_all () {
    items=$(docker images | awk 'NR > 1 { print $1 }' | grep -E "*_test")
    cd temp/
    for itm in $items
    do
        echo "Saving image '$itm'"
        docker save -o $itm.tar.gz $itm
    done
}

if [ -d "temp/" ]; then
    save_all
else
    mkdir -p temp/
    save_all
fi

