.PHONY: help

CMD ?= ''

help: ## This help.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

BRANCH_DEFAULT = main

start_common:  ## Start the applications common locally
	@echo "Starting the applications common locally"
	@echo "\033[0;32mStart Up docker compose"
	@docker-compose up -d

restart_common:  ## Restart the applications common
	@echo "Restarting the applications common"
	@docker-compose restart

stop_common:  ## Stop the applications common
	@echo "Stopping the applications common"
	@docker-compose down

db_create_coopbam: ## DB Create coopbam
	@echo "Create database coopbam"
	@docker-compose exec mysql sh -c "mysql -uroot -psecret -e 'CREATE DATABASE coopbam CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;'"

db_drop_coopbam: ## DB Drop coopbam
	@echo "Drop database coopbam"
	@docker-compose exec mysql sh -c "mysql -uroot -psecret -e 'DROP DATABASE coopbam;'"
