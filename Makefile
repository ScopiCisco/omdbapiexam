.PHONY: image

image:
	docker build -t $(IMAGE) .
