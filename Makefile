install: ## Initial project setup, create virtualenv, Jupyter kernel, and install dependencies
	@printf "\nInitial project setup\n"
	@chmod +x ./scripts/install.sh
	@./scripts/install.sh


deploy: format lint ## Format, lint, and deploy project to ECR, usage: make deploy tag=docker-tag
	@printf "\nBuild and push docker container to ECR\n"
	@chmod +x ./scripts/build_and_push.sh
	@./scripts/build_and_push.sh $(tag)


deploy-only: ## Only build docker container and push to ECR, usage: make deploy-only tag=docker-tag
	@printf "\nBuild and push docker container to ECR\n"
	@chmod +x ./scripts/build_and_push.sh
	@./scripts/build_and_push.sh $(tag)


format: ## Format Python files and notebooks in src/
	@printf "\nFormat code in src/\n"
	@chmod +x ./scripts/format.sh
	@./scripts/format.sh


lint: ## Lint Python files and notebooks in src/
	@printf "\nLint code in src/\n"
	@chmod +x ./scripts/lint.sh
	@./scripts/lint.sh


.PHONY: help
help: ## List all commands
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'


.DEFAULT_GOAL := help
