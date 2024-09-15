# docker-nginx-php

## build and run

- `❯ docker build -t hello-philip .`
- `❯ docker run hello-philip`

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
❯ docker images hello-philip
REPOSITORY     TAG       IMAGE ID       CREATED        SIZE
hello-philip   latest    0edc5c366f1f   43 hours ago   9.57MB
```

## usage

`docker run -p 80:8080 hello-nginx`

## :link:

- <https://github.com/erseco/alpine-php-webserver>
  - <https://github.com/TrafeX/docker-php-nginx/tree/master>
