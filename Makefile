.PHONY: build
BUILD_CMD ?=build
build: Dockerfile
	docker $(BUILD_CMD) . --file Dockerfile --tag ghthor/caddy-l4:latest

.PHONY: tag
tag:
	docker tag ghthor/caddy-l4:latest ghthor/caddy-l4:alpine
	docker tag ghthor/caddy-l4:latest ghthor/caddy-l4:alpine-3.14

.PHONY: push
push:
	docker push ghthor/caddy-l4:latest
	docker push ghthor/caddy-l4:alpine
	docker push ghthor/caddy-l4:alpine-3.14
