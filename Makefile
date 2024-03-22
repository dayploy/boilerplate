#!make
.PHONY: help

help:
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n"} /^[a-zA-Z_0-9-]+:.*?##/ {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2} /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

composer-install: ## install composer
	docker run --rm -it -w="/srv/app" --volume $$(pwd):/srv/app composer:2.7.2 composer install --prefer-source

composer-require: ## require composer
	docker run --rm -it -w="/srv/app" --volume $$(pwd):/srv/app composer:2.7.2 composer require --prefer-source $(target)

composer-update: ## update composer
	docker run --rm -it -w="/srv/app" --volume $$(pwd):/srv/app composer:2.7.2 composer update

cli: ## run command
	docker run --rm -it -w="/srv/app" --volume $$(pwd):/srv/app php:cli bin/console

docker-build: ## build docker image
	docker build -f ./docker/Dockerfile . -t tbeaujean/boilerplate:latest

docker-push: ## push docker hub image
	docker push tbeaujean/boilerplate:latest
