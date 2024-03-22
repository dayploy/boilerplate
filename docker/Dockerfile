FROM php:cli

WORKDIR /srv/app

COPY .env .env
COPY bin bin
COPY config config
COPY src src
COPY vendor vendor

COPY composer.json composer.json

CMD [ "bin/console", "make:boilerplate"]
