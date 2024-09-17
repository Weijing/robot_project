# Build docker container for RVT

clone the RVT repo and its submodules

```
 git clone --recurse-submodules git@github.com:NVlabs/RVT.git && cd RVT && git submodule update --init 

``` 

Build the docker container

```
 docker build .

```


NOTE that pytorch3D is not installed in the container.