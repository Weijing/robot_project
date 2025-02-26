#!/bin/bash

# 定义容器名称
CONTAINER_NAME="shenlan_proj3_v1"

# 定义Docker镜像名称, change the name to the docker image name
# suggest using docker tag to rename
# IMAGE_NAME="pytorch/pytorch:1.10.0-cuda11.3-cudnn8-runtime"
IMAGE_NAME="shenlan_proj3"
# 检查是否已经有同名容器在运行
if [ $(docker ps -aq -f name=^/${CONTAINER_NAME}$ | wc -l) -ne 0 ]; then
    echo "容器已存在，正在停止并删除旧容器..."
    docker stop $CONTAINER_NAME
    docker rm $CONTAINER_NAME
fi

set -ex
# xhost +
export DISPLAY=:0

# 运行Docker容器
docker run -it --name $CONTAINER_NAME \
    --net=host \
    --ipc=host \
    --privileged \
    -v "/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    -e DISPLAY=$DISPLAY \
    -e GDK_SCALE \
    -e GDK_DPI_SCALE \
    -e XAUTHORITY \
    -v $(pwd):/home/ws \
    -v /dev/bus/usb:/dev/bus/usb \
    -v /dev/dri:/dev/dri \
    --group-add video \
    --gpus all\
    $IMAGE_NAME