# docker-nginx-php

## build and run

- `❯ docker build -t hello-philip .`
- `❯ docker run hello-philip`

```
❯ docker run hello-philip
Hello Philip!
```

## images housekeeping

`❯ docker rmi $(docker images -f "dangling=true" -q)`

```
❯ docker images
REPOSITORY                    TAG       IMAGE ID       CREATED          SIZE
getting-started               latest    f195e6c44f43   27 minutes ago   217MB
fastapi-api                   latest    d4de778faba8   5 days ago       183MB
hello-philip                  latest    8798689811ee   6 days ago       8.83MB
hello                         latest    0f35cae43369   6 days ago       8.83MB
mac-fastapi                   latest    3971aeb710d4   7 days ago       182MB
mac-fastapi                   v0.3      3971aeb710d4   7 days ago       182MB
ghcr.io/macphil/mac-fastapi   v0.3      3971aeb710d4   7 days ago       182MB
hello-world                   latest    ee301c921b8a   16 months ago    9.14kB
```
