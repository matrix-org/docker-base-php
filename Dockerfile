FROM docker.jcg.re/base-caddy
ENV APPDIR=/phpapp
RUN apk add --no-cache \
      php7-fpm
ADD root /
EXPOSE 8888
