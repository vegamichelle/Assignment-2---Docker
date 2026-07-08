IMAGE_NAME = sentiment-app
CONTAINER_NAME = sentiment-app-container
PORT = 8501

build:
	docker build -t $(IMAGE_NAME) .

run:
	docker run --rm -p $(PORT):8501 --name $(CONTAINER_NAME) $(IMAGE_NAME)

clean:
	docker rm -f $(CONTAINER_NAME) 2>/dev/null || true
	docker rmi -f $(IMAGE_NAME) || true

.PHONY: build run clean
