FROM alpine:3.20.3
LABEL Maintainer="Philip Schröder <post@macphil.de>"
LABEL Description="home information based on plain html unsing Nginx"

RUN apk add --no-cache \
  curl \
  nginx \
  php \
  php-fpm && \
  rm -rf /var/cache/apk/*

# Copy basic files
COPY config/nginx.non-root.conf /etc/nginx/nginx.conf

# Add application
COPY app /app

RUN nginx -t && php-fpm83 -D

# Expose the port nginx is reachable on
EXPOSE 8080

# CMD ["nginx", "-g", "daemon off;"]
CMD ["sh", "-c", "nginx && php-fpm83 -F"]
