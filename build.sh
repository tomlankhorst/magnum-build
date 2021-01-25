#!/bin/bash

docker build -t magnum-build-$1 --build-arg FROM_IMG=ubuntu:$1 .
docker run --rm -v$(pwd)/$1:/out magnum-build-bionic
