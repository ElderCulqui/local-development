.PHONY: help

CMD ?= ''

help: ## This help.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

cli: ## Enter to container console from Database
	@echo "Entering to container console from Database"
	@docker-compose exec sqlsrv bash

build:  ## Start the applications sqlsrv locally
	@echo "Starting the applications sqlsrv locally"
	@echo "\033[0;32mStart Up docker compose"
	@docker-compose up -d

start:  ## Start the applications sqlsrv locally
	@echo "Starting the applications sqlsrv locally"
	@echo "\033[0;32mStart Up docker compose"
	@docker-compose up -d

restart:  ## Restart the applications sqlsrv
	@echo "Restarting the applications sqlsrv"
	@docker-compose restart

stop:  ## Stop the applications sqlsrv
	@echo "Stopping the applications sqlsrv"
	@docker-compose down

create_asistencia: ## DB Create asistencia sunarp
	@echo "Create database asistencia"
	@docker-compose exec sqlsrv sh -c "/opt/mssql-tools18/bin/sqlcmd -S localhost -U sa -P Password12345* -C -Q 'CREATE DATABASE asistencia;'"

drop_asistencia: ## DB Drop asistencia
	@echo "Drop database asistencia"
	@docker-compose exec sqlsrv sh -c "/opt/mssql-tools18/bin/sqlcmd -S localhost -U sa -P Password12345* -C -Q 'DROP DATABASE asistencia;'"
