NODE_VERSION="16-alpine3.12"

build:
	docker build -t isdzulqor/json-server:${NODE_VERSION} -t isdzulqor/json-server:latest . --build-arg NODE_VERSION=${NODE_VERSION}

push: 
	make build 
	docker push isdzulqor/json-server --all-tags