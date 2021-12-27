#!/bin/bash
GFX=$1
USAGE="Usage: setup.sh mesa|nvidia"
if [ "x$GFX" = "x" ]; then
    echo "$USAGE"
    exit 1
fi

if [ "$GFX" = "nvidia" ]; then
   distribution=$(. /etc/os-release;echo $ID$VERSION_ID) \
   && curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add - \
   && curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list
   sudo apt-get update
   sudo apt-get install -y nvidia-docker2
elif [ "$GFX" = "mesa" ]; then
    distribution=
else
    echo "$USAGE"
    exit 1
fi


docker pull bahiart/spdataset:$GFX-latest

