xhost +"local:docker@"
docker run -it --volume=/dev:/dev --volume=/tmp/.X11-unix:/tmp/.X11-unix:rw --volume=/home/$USER/.Xauthority:/root/.Xauthority:rw --volume=$PWD/setplays:/setplays:rw --env="XAUTHORITY=/root/.Xauthority" --env="DISPLAY=${DISPLAY}" --env="QT_X11_NO_MITSHM=1" --rm --name spds bahiart/spdataset:mesa-latest
