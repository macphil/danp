# DANp

formally known as docker-nginx-php

## build and run

- `❯ docker compose up`

```
 ____    _    _   _
|  _ \  / \  | \ | |_ __
| | | |/ _ \ |  \| | '_ \
| |_| / ___ \| |\  | |_) |
|____/_/   \_\_| \_| .__/
                    |_|
```

## images housekeeping

`❯ docker rmi $(docker images -f "dangling=true" -q)`

```
❯ docker images
REPOSITORY     				TAG       IMAGE ID        SIZE
ghcr.io/macphil/danp  latest    ed56ae3fc421    31.3MB
```



## optimization

```
❯ dive ghcr.io/macphil/danp

Image name: ghcr.io/macphil/danp
Total Image size: 31 MB
Potential wasted space: 534 kB
Image efficiency score: 99 %

Count   Total Space  Path
    2        443 kB  /etc/ssl/certs/ca-certificates.crt
    2         54 kB  /lib/apk/db/installed
    2         28 kB  /lib/apk/db/scripts.tar
    2        5.2 kB  /etc/nginx/nginx.conf
```
