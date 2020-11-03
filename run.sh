#xhost +local:docker  #give docker access to the xserver
docker run -ti --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix salwaelk/fritzing-bionic:latest
