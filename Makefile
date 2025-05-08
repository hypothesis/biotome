.PHONY: help
help:
	@echo "make help              Show this help message"
	@echo "make dev               Run the site in the development server"

.PHONY: dev
dev:
	find site | entr -r bin/build.sh
