# FROM pytorch/pytorch:1.12.1-cuda11.3-cudnn8-runtime
FROM cnstark/pytorch:2.3.1-py3.10.15-cuda12.1.0-ubuntu22.04

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update 
RUN apt-get install -y git vim wget
RUN apt install -y libgl1-mesa-glx
RUN apt-get install -y libglib2.0-0 libsm6 libxrender1 libxext6


RUN pip install --upgrade pip -i https://pypi.mirrors.ustc.edu.cn/simple/
# RUN pip install torch==1.12.1 torchvision==0.13.1 torchaudio==0.12.1 --index-url https://download.pytorch.org/whl/cu113

# RUN conda create -n act_a1 python=3.8.10 
# RUN conda activate act_a1 
# RUN conda install python=3.8.10
# RUN apt install -y python3.8
# RUN pip install pyquaternion
# RUN pip install pyyaml
# RUN pip install rospkg
# RUN pip install pexpect
# RUN pip install mujoco==2.3.6
# RUN pip install dm_control==1.0.13
# RUN pip install opencv-python
# RUN pip install matplotlib
# RUN pip install einops
# RUN pip install packaging
# RUN pip install h5py
# RUN pip install ipython

WORKDIR /home/ws


