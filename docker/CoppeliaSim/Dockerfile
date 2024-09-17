# FROM pytorch/pytorch:1.12.1-cuda11.3-cudnn8-runtime
# FROM cnstark/pytorch:1.12.1-py3.9.12-cuda11.6.2-ubuntu20.04
FROM osrf/ros:noetic-desktop

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
    apt-get install -y pip git vim wget


RUN pip install --upgrade pip -i https://pypi.mirrors.ustc.edu.cn/simple/
RUN pip install cffi -i https://pypi.mirrors.ustc.edu.cn/simple/


# install coppliasim 4.1 and setup the environment
WORKDIR /home
RUN wget https://downloads.coppeliarobotics.com/V4_1_0/CoppeliaSim_Player_V4_1_0_Ubuntu20_04.tar.xz

RUN mkdir -p /home/CoppeliaSim
RUN tar -xf CoppeliaSim_Player_V4_1_0_Ubuntu20_04.tar.xz -C /home/CoppeliaSim

RUN echo "export COPPELIASIM_ROOT=/home/CoppeliaSim" >> ~/.bashrc
RUN echo "export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$COPPELIASIM_ROOT"   >> ~/.bashrc
RUN echo "export QT_QPA_PLATFORM_PLUGIN_PATH=$COPPELIASIM_ROOT" >> ~/.bashrc
RUN export COPPELIASIM_ROOT=/home/CoppeliaSim
RUN export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$COPPELIASIM_ROOT
RUN export QT_QPA_PLATFORM_PLUGIN_PATH=$COPPELIASIM_ROOT

# install pyrep and rlbench, better download first and install locally
# RUN pip install git+https://github.com/stepjam/PyRep.git@231a1ac6b0a179cff53c1d403d379260b9f05f2f
# RUN pip install git+https://github.com/buttomnutstoast/RLBench.git@587a6a0e6dc8cd36612a208724eb275fe8cb4470


