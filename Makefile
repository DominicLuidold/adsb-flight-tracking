.EXPORT_ALL_VARIABLES:

include .env
include .env.local

# Makefile config
.DEFAULT_GOAL:=help
.PHONY: start stop healthcheck-ultrafeeder healthcheck-fr24 help

## Docker stack
start: ## Start ultrafeeder and fr24feed
	@docker compose -f ./docker/compose.yaml up -d

stop: ## Stop ultrafeeder and fr24feed
	@docker compose -f ./docker/compose.yaml down

## Healthchecks
healthcheck-ultrafeeder: ## Get ultrafeeder container healthcheck data
	@docker inspect ultrafeeder | jq .[0].State.Health.Log | jq .[-1].Output | awk '{gsub(/\\n/,"\n")}1'

healthcheck-fr24: ## Get fr24 container healthcheck data
	@docker inspect fr24 | jq .[0].State.Health.Log | jq .[-1].Output | awk '{gsub(/\\n/,"\n")}1'

## Help
help: ## Show available commands.
	@grep -E '(^[a-zA-Z0-9_-]+:.*?##.*$$)|(^##)' Makefile | awk 'BEGIN {FS = ":.*?## "}{printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m##/' | sed -e 's/##//'
