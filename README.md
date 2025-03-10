# docker-nginx-php

## build and run

- `❯ docker compose up`

```
❯ docker run hello-philip
 _   _      _ _         ____  _     _ _ _
| | | | ___| | | ___   |  _ \| |__ (_) (_)_ __
| |_| |/ _ \ | |/ _ \  | |_) | '_ \| | | | '_ \
|  _  |  __/ | | (_) | |  __/| | | | | | | |_) |
|_| |_|\___|_|_|\___/  |_|   |_| |_|_|_|_| .__/
                                         |_|
```

## images housekeeping

`❯ docker rmi $(docker images -f "dangling=true" -q)`

```
❯ docker images hello-nginx
REPOSITORY     TAG       IMAGE ID       CREATED        SIZE
hello-nginx    latest    ebdf6c77d4df   32 minutes ago   17.5MB
```

## usage

`docker run -p 80:8080 hello-nginx`



## optimization

```
❯ dive ghcr.io/macphil/zero-container:alpha.0.1

Image name: ghcr.io/macphil/zero-container:alpha.0.1
Total Image size: 18 MB
Potential wasted space: 526 kB
Image efficiency score: 98 %

Count   Total Space  Path
    2        443 kB  /etc/ssl/certs/ca-certificates.crt
    2         46 kB  /lib/apk/db/installed
    2         28 kB  /lib/apk/db/scripts.tar
    2        4.9 kB  /etc/nginx/nginx.conf
    2        1.5 kB  /etc/passwd
    2        1.0 kB  /etc/group
    2         547 B  /etc/shadow
    2         288 B  /lib/apk/db/triggers
    2         129 B  /etc/apk/world
    2           0 B  /lib/apk/exec
    2           0 B  /lib/apk/db/lock
```





## :link:

- <https://github.com/erseco/alpine-php-webserver>
  - <https://github.com/TrafeX/docker-php-nginx/tree/master>
