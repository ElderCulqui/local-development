.PHONY: help

CMD ?= ''

help: ## This help.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

cli: ## Enter to container console from Portainer
	@echo "Entering to container console from Portainer"
	@docker-compose exec portainer bash

build:  ## Start the applications portainer locally
	@echo "Starting the applications portainer locally"
	@echo "\033[0;32mStart Up docker compose"
	@docker-compose up -d

start:  ## Start the applications portainer locally
	@echo "Starting the applications portainer locally"
	@echo "\033[0;32mStart Up docker compose"
	@docker-compose up -d

restart:  ## Restart the applications portainer
	@echo "Restarting the applications portainer"
	@docker-compose restart

stop:  ## Stop the applications portainer
	@echo "Stopping the applications portainer"
	@docker-compose down
