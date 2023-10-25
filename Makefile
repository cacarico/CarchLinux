build: ## Builds CarchLinux
	@sudo mkarchiso -v -w iso/carchlinux/output -o iso/carchlinux/output carchlinux	

.PHONY: help build

help: ## This help.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help
