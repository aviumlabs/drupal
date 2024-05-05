# syntax=docker/dockerfile:1
FROM drupal:10.2.6-php8.3-apache-bookworm

RUN apt update && apt upgrade -y \
    && apt-get install -y \
    openssl \
    unzip \
    zip \
    postgresql-client-15 \
    && apt clean 
