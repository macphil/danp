# syntax=docker/dockerfile:1
FROM alpine:3.20.3
COPY message.txt .
CMD ["/bin/cat message.txt"]
ENTRYPOINT ["/bin/sh", "-c"]