#!/bin/sh
set -e
BUILD_BY="mybsd@591wifi.com"

#apt-get install -y kpartx make pbuilder devscripts python3-pystache python3-git python3-setuptools parted dosfstools python3-toml python3-jinja2
#CONTAINER_NAME="vyos/vyos-build:current-arm64"
./build-packages.sh
cd ./vyos-build && ./build-vyos-image --architecture=amd64 --build-by="${BUILD_BY}" --build-type=release iso

