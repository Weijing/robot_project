# docker for robot_project

## docker_act folder: shenlan project 1

installation of NVIDIA Container Toolkit:

```
https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html#installing-with-apt
```

usage: 
```
cd {$YOURPATH}/docker_act
sudo docker build .
```

run docker:
copy the run_docker.sh to the path of your workspace
```
cp {$YOURPATH}/docker_act/run_docker.sh {$WORKSPACE}
```

check docker image name and rename it
```
sudo docker image ls
sudo docker tag xxxx shenlan_proj1
```

start the docker:
```
cp  {$WORKSPACE}
sudo bash run_docker.sh
```

FAQ:
Q. display problem
A. check display numnber by echo $DISPLAY, change run_docker.sh export DISPLAY=:0 or export DISPLAY=:1


