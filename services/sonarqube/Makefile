.PHONY: help

CMD ?= ''

help: ## This help.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

cli: ## Enter to container console from Sonarqube
	@echo "Entering to container console from Sonarqube"
	@docker-compose exec sonarqube bash

build:  ## Start the applications sonarqube locally
	@echo "Starting the applications sonarqube locally"
	@echo "\033[0;32mStart Up docker compose"
	@docker-compose up -d

start:  ## Start the applications sonarqube locally
	@echo "Starting the applications sonarqube locally"
	@echo "\033[0;32mStart Up docker compose"
	@docker-compose up -d

restart:  ## Restart the applications sonarqube
	@echo "Restarting the applications sonarqube"
	@docker-compose restart

stop:  ## Stop the applications sonarqube
	@echo "Stopping the applications sonarqube"
	@docker-compose down
