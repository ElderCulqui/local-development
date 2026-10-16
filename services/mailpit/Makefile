.PHONY: help

CMD ?= ''

help: ## This help.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

cli: ## Enter to container console from Mailpit
	@echo "Entering to container console from Mailpit"
	@docker-compose exec mailpit /bin/sh

build:  ## Start the applications mailpit locally
	@echo "Starting the applications mailpit locally"
	@echo "\033[0;32mStart Up docker compose"
	@docker-compose up -d

start:  ## Start the applications mailpit locally
	@echo "Starting the applications mailpit locally"
	@echo "\033[0;32mStart Up docker compose"
	@docker-compose up -d

restart:  ## Restart the applications mailpit
	@echo "Restarting the applications mailpit"
	@docker-compose restart

stop:  ## Stop the applications mailpit
	@echo "Stopping the applications mailpit"
	@docker-compose down

logs:  ## Show the logs from mailpit
	@echo "Showing logs for mailpit"
	@docker-compose logs -f mailpit

purge: ## Purge all emails from mailpit
	@echo "Purging all emails from mailpit"
	@curl -X DELETE http://localhost:8025/api/v1/messages
