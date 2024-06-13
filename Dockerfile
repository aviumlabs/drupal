# syntax=docker/dockerfile:1
FROM drupal:10.2.7-php8.3-apache-bookworm

WORKDIR /opt/drupal

RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y \
    lsb-release \
    curl \
    ca-certificates \
    openssl \
    unzip \
    zip \
    && apt clean \
    && install -d /usr/share/postgresql-common/pgdg \
    && curl -o /usr/share/postgresql-common/pgdg/apt.postgresql.org.asc --fail https://www.postgresql.org/media/keys/ACCC4CF8.asc 

RUN sh -c 'echo "deb [signed-by=/usr/share/postgresql-common/pgdg/apt.postgresql.org.asc] https://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

RUN apt update && apt install -y \
    postgresql-client-16 \
    && apt clean 
