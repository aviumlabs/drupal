# syntax=docker/dockerfile:1
FROM drupal:10.2.6-php8.3-fpm-alpine3.19

RUN apk update && apk upgrade && apk add --no-cache \
    openssl \
    unzip \
    zip \
    postgresql16-client
