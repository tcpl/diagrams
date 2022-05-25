IMAGE_NAME ?= diagrams

.DEFAULT: test

build:
	docker build -t $(IMAGE_NAME) .

test: build
	docker run --rm -v `PWD`/examples:/app -it $(IMAGE_NAME)

