.PHONY: help

CMD ?= ''

help: ## This help.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

cli: ## Enter to container console from Database
	@echo "Entering to container console from Database"
	@docker-compose exec postgres sh

build:  ## Start the applications postgres locally
	@echo "Starting the applications postgres locally"
	@echo "\033[0;32mStart Up docker compose"
	@docker-compose up -d

start:  ## Start the applications postgres locally
	@echo "Starting the applications postgres locally"
	@echo "\033[0;32mStart Up docker compose"
	@docker-compose up -d

restart:  ## Restart the applications postgres
	@echo "Restarting the applications postgres"
	@docker-compose restart

stop:  ## Stop the applications postgres
	@echo "Stopping the applications postgres"
	@docker-compose down