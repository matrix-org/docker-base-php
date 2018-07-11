FROM docker.io/matrixdotorg/base-caddy
ENV APPDIR=/phpapp \
    UID=1337 \
    GID=1337
RUN apk add --no-cache \
      php7-fpm \
      php7 \
      s6 \
      su-exec
ADD root /
EXPOSE 8888
CMD ["/bin/s6-svscan", "/etc/s6.d"]
