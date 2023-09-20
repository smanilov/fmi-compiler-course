#!/bin/bash
set -x

printf "\033[1;32mMake sure dockerd is running before running this script.\n\033[00m"
pushd docker-container
docker build . -t coolc-spim
popd
docker run --name coolc-spim -v $(pwd)/class-code:/usr/class -v $(pwd)/my-code:/usr/code -d coolc-spim tail -f /dev/null
docker exec -it coolc-spim bash
