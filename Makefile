.PHONY: help
help:
	@echo "make help              Show this help message"
	@echo "make dev               Run the site in the development server"

.PHONY: dev
dev: HYPOTHESIS_EMBED_URL := http://localhost:5000/embed.js
dev:
	find src | entr -r bin/run.sh
