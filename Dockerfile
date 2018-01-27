FROM docker.jcg.re/base-caddy
RUN apk add --no-cache \
      php7-fpm
ADD root /
EXPOSE 8888
