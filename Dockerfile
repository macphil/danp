# syntax=docker/dockerfile:1
FROM alpine:3.20.3

LABEL Maintainer="Philip Schröder <post@macphil.de>" \
      Description="Lightweight container"

RUN apk --no-cache add figlet

# COPY message.txt .
# CMD ["/bin/cat message.txt"]

# CMD ["command -v figlet"]
CMD ["/usr/bin/figlet Hello Philip"]

ENTRYPOINT ["/bin/sh", "-c"]