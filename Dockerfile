FROM alpine:3.20.3
LABEL Maintainer="Philip Schröder <post@macphil.de>"
LABEL Description="home information based on plain html unsing Nginx"

RUN apk add --no-cache \
  curl \
  nginx && \
  rm -rf /var/cache/apk/*

# Copy basic files
COPY config/nginx.non-root.conf /etc/nginx/nginx.conf

RUN nginx -t
# Add application
COPY src /usr/share/nginx/html

# Expose the port nginx is reachable on
EXPOSE 8080

# root user will run 'nginx: master process'
# nobody user will run 'nginx: worker process' as dictated in the nginx.non-root.conf
CMD ["nginx", "-g", "daemon off;"]