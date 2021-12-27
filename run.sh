#!/bin/bash
GFX=$1
USAGE="Usage: run.sh mesa|nvidia"
if [ "x$GFX" = "x" ]; then
    echo "$USAGE"
    exit 1
fi

if [ "$GFX" = "nvidia" ]; then
    RUNTIME="--gpus all"
elif [ "$GFX" = "mesa" ]; then
    RUNTIME=
else
    echo "$USAGE"
    exit 1
fi


xhost +"local:docker@"
docker run -it $RUNTIME --volume=/dev:/dev --volume=/tmp/.X11-unix:/tmp/.X11-unix:rw --volume=/home/$USER/.Xauthority:/root/.Xauthority:rw --volume=$PWD/setplays:/setplays:rw --env="XAUTHORITY=/root/.Xauthority" --env="DISPLAY=${DISPLAY}" --env="QT_X11_NO_MITSHM=1" --rm --name spds bahiart/spdataset:$GFX-latest
