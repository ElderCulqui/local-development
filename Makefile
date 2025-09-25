.PHONY: help

CMD ?= ''

help: ## This help.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

BRANCH_DEFAULT = main

cli_db_common: ## Enter to container console from Database
	@echo "Entering to container console from Database"
	@docker-compose exec mysql bash

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

cli_coopbam: ## Enter to container console from COOPBAM
	@echo "Entering to container console from COOPBAM"
	@docker exec -ti api_coopbam sh

cli_coopbam_node: ## Enter to container console from COOPBAM NODE
	@echo "Entering to container console from COOPBAM NODE"
	@docker exec -ti node_coopbam sh

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

db_create_sunarp: ## DB Create sunarp
	@echo "Create database sunarp"
	@docker-compose exec mysql sh -c "mysql -uroot -psecret -e 'CREATE DATABASE sunarp CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;'"

db_drop_sunarp: ## DB Drop sunarp
	@echo "Drop database sunarp"
	@docker-compose exec mysql sh -c "mysql -uroot -psecret -e 'DROP DATABASE sunarp;'"

start_sunarp:  ## Start the applications SUNARP locally
	@echo "Starting the application SUNARP locally"
	@echo "\033[0;32mProject SUNARP."
	@cd apps/sunarp && make start && cd ../
	@cp docker/nginx/conf.d/sunarp.conf.dist docker/nginx/conf.d/sunarp.conf
	@echo "\033[0;32mStart Up docker compose"
	@docker-compose up -d

stop_sunarp:  ## Stop the application SUNARP
	@echo "Stopping the application SUNARP"
	@cd apps/sunarp && make stop && cd ../
	@rm docker/nginx/conf.d/sunarp.conf
	@docker-compose up -d

restart_sunarp:  ## Restart the application SUNARP
	@echo "Restarting the application SUNARP"
	@cd apps/sunarp && make restart && cd ../
	@docker-compose restart

status_sunarp:  ## Status the application SUNARP
	@echo "Showing the status for the application SUNARP"
	@cd apps/sunarp && make status && cd ../
	@docker-compose ps

logs_sunarp:  ## Show the all Logs from the application SUNARP
	@echo "Showing all logs for every container"
	@cd apps/sunarp && make logs
	
db_create_modulo_consulta: ## DB Create modulo_consulta
	@echo "Create database modulo_consulta"
	@docker-compose exec mysql sh -c "mysql -uroot -psecret -e 'CREATE DATABASE modulo_consulta CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;'"

db_drop_modulo_consulta: ## DB Drop modulo_consulta
	@echo "Drop database modulo_consulta"
	@docker-compose exec mysql sh -c "mysql -uroot -psecret -e 'DROP DATABASE modulo_consulta;'"

start_modulo_consulta:  ## Start the applications MODULO CONSULTA locally
	@echo "Starting the application MODULO CONSULTA locally"
	@echo "\033[0;32mProject MODULO CONSULTA."
	@cd apps/modulo_consulta && make start && cd ../
	@cp docker/nginx/conf.d/modulo_consulta.conf.dist docker/nginx/conf.d/modulo_consulta.conf
	@echo "\033[0;32mStart Up docker compose"
	@docker-compose up -d

stop_modulo_consulta:  ## Stop the application MODULO CONSULTA
	@echo "Stopping the application MODULO CONSULTA"
	@cd apps/modulo_consulta && make stop && cd ../
	@rm docker/nginx/conf.d/modulo_consulta.conf
	@docker-compose up -d

restart_modulo_consulta:  ## Restart the application MODULO CONSULTA
	@echo "Restarting the application MODULO CONSULTA"
	@cd apps/modulo_consulta && make restart && cd ../
	@docker-compose restart

status_modulo_consulta:  ## Status the application MODULO CONSULTA
	@echo "Showing the status for the application MODULO CONSULTA"
	@cd apps/modulo_consulta && make status && cd ../
	@docker-compose ps

logs_modulo_consulta:  ## Show the all Logs from the application MODULO CONSULTA
	@echo "Showing all logs for every container"
	@cd apps/modulo_consulta && make logs

db_create_rani: ## DB Create RANI
	@echo "Create database rani"
	@docker-compose exec mysql sh -c "mysql -uroot -psecret -e 'CREATE DATABASE asistencias CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;'"

db_drop_rani: ## DB Drop rani
	@echo "Drop database asistencias"
	@docker-compose exec mysql sh -c "mysql -uroot -psecret -e 'DROP DATABASE asistencias;'"

start_rani:  ## Start the applications rani locally
	@echo "Starting the application RANI locally"
	@echo "\033[0;32mProject RANI."
	@cd apps/rani && make start && cd ../
	@cp docker/nginx/conf.d/rani.conf.dist docker/nginx/conf.d/rani.conf
	@echo "\033[0;32mStart Up docker compose"
	@docker-compose up -d

stop_rani:  ## Stop the application RANI
	@echo "Stopping the application RANI"
	@cd apps/rani && make stop && cd ../
	@rm docker/nginx/conf.d/rani.conf
	@docker-compose up -d

restart_rani:  ## Restart the application RANI
	@echo "Restarting the application RANI"
	@cd apps/rani && make restart && cd ../
	@docker-compose restart

status_rani:  ## Status the application RANI
	@echo "Showing the status for the application RANI"
	@cd apps/rani && make status && cd ../
	@docker-compose ps

logs_rani:  ## Show the all Logs from the application RANI
	@echo "Showing all logs for every container"
	@cd apps/rani && make logs

cli_rani: ## Enter to container console from RANI
	@echo "Entering to container console from RANI"
	@docker exec -ti api_rani sh

cli_rani_node: ## Enter to container console from RANI NODE
	@echo "Entering to container console from RANI NODE"
	@docker exec -ti node_rani sh


db_create_solidaridad: ## DB Create solidaridad
	@echo "Create database solidaridad"
	@docker-compose exec mysql sh -c "mysql -uroot -psecret -e 'CREATE DATABASE solidaridad CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;'"

db_drop_solidaridad: ## DB Drop solidaridad
	@echo "Drop database solidaridad"
	@docker-compose exec mysql sh -c "mysql -uroot -psecret -e 'DROP DATABASE solidaridad;'"

start_solidaridad:  ## Start the applications solidaridad locally
	@echo "Starting the application SOLIDARIDAD locally"
	@echo "\033[0;32mProject SOLIDARIDAD."
	@cd apps/solidaridad && make start && cd ../
	@cp docker/nginx/conf.d/solidaridad.conf.dist docker/nginx/conf.d/solidaridad.conf
	@echo "\033[0;32mStart Up docker compose"
	@docker-compose up -d

stop_solidaridad:  ## Stop the application solidaridad
	@echo "Stopping the application solidaridad"
	@cd apps/solidaridad && make stop && cd ../
	@rm docker/nginx/conf.d/solidaridad.conf
	@docker-compose up -d

restart_solidaridad:  ## Restart the application solidaridad
	@echo "Restarting the application solidaridad"
	@cd apps/solidaridad && make restart && cd ../
	@docker-compose restart

status_solidaridad:  ## Status the application solidaridad
	@echo "Showing the status for the application solidaridad"
	@cd apps/solidaridad && make status && cd ../
	@docker-compose ps

logs_solidaridad:  ## Show the all Logs from the application solidaridad
	@echo "Showing all logs for every container"
	@cd apps/solidaridad && make logs

cli_solidaridad: ## Enter to container console from solidaridad
	@echo "Entering to container console from solidaridad"
	@docker exec -ti api_solidaridad sh

cli_solidaridad_node: ## Enter to container console from solidaridad NODE
	@echo "Entering to container console from solidaridad NODE"
	@docker exec -ti node_solidaridad sh


start_liam_diario:  ## Start the applications liam_diario locally
	@echo "Starting the application LIAM DIARIO locally"
	@echo "\033[0;32mProject LIAM DIARIO."
	@cd apps/liam-diario && make start && cd ../
	@cp docker/nginx/conf.d/liam_diario.conf.dist docker/nginx/conf.d/liam_diario.conf
	@echo "\033[0;32mStart Up docker compose"
	@docker-compose up -d

stop_liam_diario:  ## Stop the application liam_diario
	@echo "Stopping the application liam_diario"
	@cd apps/liam-diario && make stop && cd ../
	@rm docker/nginx/conf.d/liam_diario.conf
	@docker-compose up -d

restart_liam_diario:  ## Restart the application liam_diario
	@echo "Restarting the application liam_diario"
	@cd apps/liam-diario && make restart && cd ../
	@docker-compose restart

status_liam_diario:  ## Status the application liam_diario
	@echo "Showing the status for the application liam_diario"
	@cd apps/liam-diario && make status && cd ../
	@docker-compose ps

logs_liam_diario:  ## Show the all Logs from the application liam_diario
	@echo "Showing all logs for every container"
	@cd apps/liam-diario && make logs

cli_liam_diario: ## Enter to container console from liam_diario
	@echo "Entering to container console from liam_diario"
	@docker exec -ti web_liam_diario sh

cli_liam_diario_node: ## Enter to container console from liam_diario NODE
	@echo "Entering to container console from liam_diario NODE"
	@docker exec -ti node_liam_diario sh

db_create_liam_diario: ## DB Create liam diario
	@echo "Create database liam diario"
	@docker-compose exec mysql sh -c "mysql -uroot -psecret -e 'CREATE DATABASE liam_diario CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;'"

db_drop_liam_diario: ## DB Drop liam diario
	@echo "Drop database liam diario"
	@docker-compose exec mysql sh -c "mysql -uroot -psecret -e 'DROP DATABASE liam_diario;'"


start_api_helios:  ## Start the applications api_helios locally
	@echo "Starting the application LIAM DIARIO locally"
	@echo "\033[0;32mProject HELIOS API."
	@cd apps/helios-backend && make start && cd ../
	@cp docker/nginx/conf.d/api_helios.conf.dist docker/nginx/conf.d/api_helios.conf
	@echo "\033[0;32mStart Up docker compose"
	@docker-compose up -d

stop_api_helios:  ## Stop the application api_helios
	@echo "Stopping the application api_helios"
	@cd apps/helios-backend && make stop && cd ../
	@rm docker/nginx/conf.d/api_helios.conf
	@docker-compose up -d

restart_api_helios:  ## Restart the application api_helios
	@echo "Restarting the application api_helios"
	@cd apps/liam-diario && make restart && cd ../
	@docker-compose restart