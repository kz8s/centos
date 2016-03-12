NAME := kz8s/centos
TAG := latest

all: build test

build: ; @docker build --tag ${NAME}:${TAG} .

clean: ; @docker rmi --force ${NAME}:${TAG}

test:
	@docker run ${NAME}:${TAG} | grep VERSION
	@docker run ${NAME}:${TAG} yum info letsencrypt

.PHONY: all build clean test
