.PHONY: help

CMD ?= ''

help: ## This help.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

BRANCH_DEFAULT = main

cli: ## Enter to container console from Database
	@echo "Entering to container console from Database"
	@docker-compose exec mysql bash

start:  ## Start the container mysql
	@echo "Starting the mysql container"
	@echo "\033[0;32mStart Up docker compose"
	@docker-compose up -d

restart:  ## Restart the container mysql
	@echo "Restarting the mysql container"
	@docker-compose restart

stop:  ## Stop the container mysql
	@echo "Stopping the mysql container"
	@docker-compose down