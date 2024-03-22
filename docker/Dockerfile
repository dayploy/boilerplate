FROM php:cli

WORKDIR /opt

COPY .env .env
COPY bin bin
COPY config config
COPY src src
COPY vendor vendor

COPY composer.json composer.json

CMD [ "bin/console", "make:boilerplate"]
