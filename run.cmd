xhost +"local:docker@"
docker run -it  --env="DISPLAY=host.docker.internal:0.0" --env="QT_X11_NO_MITSHM=1" --rm --name spds bahiart/spdataset:mesa-latest
