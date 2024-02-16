IMAGE_NAME=oauth2-demo:latest
MODE=dev
PORT=8888

.PHONY: build
build:
	@echo "Build docker image..."
	docker build --build-arg MODE=dev -t $(IMAGE_NAME) .

.PHONY: run
run:
	@echo "Run docker container..."
	docker run -d --rm -p $(PORT):$(PORT) -e SERVER=true --name oauth2-demo $(IMAGE_NAME)


.PHONY: stop
stop:
	@echo "Stop docker container..."
	docker stop oauth2-demo
