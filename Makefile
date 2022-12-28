.PHONY: build

build:
	@docker build -t phdev1/hadoop-base-node:1.0.0 ./docker/base-node