step 1: build image

``` docker-compose build ```
or
``` docker compose build ```

step 2: run image

``` docker-compose up -d```
or
``` docker compose up -d```

step 3: access to the container

``` sudo docker exec -it shenlan_pytorch_v2 bash ```

step 4: check python version
``` python --version ```

step 5: check pytorch version and gpu info

``` python -c "import torch; print(f'PyTorch version: {torch.__version__}'); print(f'PyTorch access to GPU: {torch.cuda.is_available()}')" ```

``` nvidia-smi ```