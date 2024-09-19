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

start_coopbam:  ## Start the applications COOPBAM locally
	@echo "Starting the application COOPBAM locally"
	@echo "\033[0;32mProject COOPBAM."
	@cd apps/coopbam && make start && cd ../
	@cp docker/nginx/conf.d/coopbam.conf.dist docker/nginx/conf.d/coopbam.conf
	@echo "\033[0;32mStart Up docker compose"
	@docker-compose up -d

stop_coopbam:  ## Stop the application COOPBAM
	@echo "Stopping the application COOPBAM"
	@cd apps/coopbam && make stop && cd ../
	@rm docker/nginx/conf.d/coopbam.conf
	@docker-compose up -d

restart_coopbam:  ## Restart the application COOPBAM
	@echo "Restarting the application COOPBAM"
	@cd apps/coopbam && make restart && cd ../
	@docker-compose restart

status_coopbam:  ## Status the application COOPBAM
	@echo "Showing the status for the application COOPBAM"
	@cd apps/coopbam && make status && cd ../
	@docker-compose ps

logs_coopbam:  ## Show the all Logs from the application COOPBAM
	@echo "Showing all logs for every container"
	@cd apps/coopbam && make logs

db_create_acopagro: ## DB Create acopagro
	@echo "Create database acopagro"
	@docker-compose exec mysql sh -c "mysql -uroot -psecret -e 'CREATE DATABASE acopagro CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;'"

db_drop_acopagro: ## DB Drop acopagro
	@echo "Drop database acopagro"
	@docker-compose exec mysql sh -c "mysql -uroot -psecret -e 'DROP DATABASE acopagro;'"

start_acopagro:  ## Start the applications ACOPAGRO locally
	@echo "Starting the application ACOPAGRO locally"
	@echo "\033[0;32mProject ACOPAGRO."
	@cd apps/acopagro && make start && cd ../
	@cp docker/nginx/conf.d/acopagro.conf.dist docker/nginx/conf.d/acopagro.conf
	@echo "\033[0;32mStart Up docker compose"
	@docker-compose up -d

stop_acopagro:  ## Stop the application ACOPAGRO
	@echo "Stopping the application ACOPAGRO"
	@cd apps/acopagro && make stop && cd ../
	@rm docker/nginx/conf.d/acopagro.conf
	@docker-compose up -d

restart_acopagro:  ## Restart the application ACOPAGRO
	@echo "Restarting the application ACOPAGRO"
	@cd apps/acopagro && make restart && cd ../
	@docker-compose restart

status_acopagro:  ## Status the application ACOPAGRO
	@echo "Showing the status for the application ACOPAGRO"
	@cd apps/acopagro && make status && cd ../
	@docker-compose ps

logs_acopagro:  ## Show the all Logs from the application ACOPAGRO
	@echo "Showing all logs for every container"
	@cd apps/acopagro && make logs