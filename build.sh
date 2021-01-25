#!/bin/bash

docker build -t magnum-build-bionic --build-arg FROM_IMG=ubuntu:18.04 .
docker run --rm -v$(pwd)/bionic:/out magnum-build-bionic

docker build -t magnum-build-focal --build-arg FROM_IMG=ubuntu:20.04 .
docker run --rm -v$(pwd)/focal:/out magnum-build-focal
