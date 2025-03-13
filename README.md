# DANp

> formally known as docker-nginx-php

A minimal base image using Docker, Alpine, NGiNX & php

> [!CAUTION]
>
> IS NOT INTENDED FOR USE AS A PRODUCTION SYSTEM!



## Usage

Document-Root: **`/app/public`**

Exposed Port: **`8080`**

### as baseimage

the following options are available for use as a base image:
- if the data is to be copied to a new image by using the Copy-Command in the Dockerfile:

```dockerfile
FROM ghcr.io/macphil/danp:latest
COPY ./app /app
```

- if the data is to be mounted in the existing image by using Volumes in docker-compose:

```
services:
  zero:
    image: ghcr.io/macphil/danp:latest
    volumes:
      - ./app:/app
    ports:
      - "80:8080"
```

 

## build and run

- `❯ docker compose up`

```
❯ docker images
REPOSITORY     				TAG       IMAGE ID        SIZE
ghcr.io/macphil/danp  latest    ed56ae3fc421    31.3MB
```

## dive result

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
