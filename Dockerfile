FROM alpine:latest
LABEL Maintainer="Philip Schröder <post@macphil.de>"
LABEL Description="A minimal base image using Alpine, NGiNX & PHP"

RUN apk add --no-cache \
  curl \
  nginx \
  php \
  php-fpm && \
  rm -rf /var/cache/apk/*

COPY config/nginx.non-root.conf /etc/nginx/nginx.conf
COPY app /app

EXPOSE 8080

CMD ["sh", "-c", "nginx && php-fpm83 -F"]
