ARG NODE_VERSION=16-alpine3.12

FROM node:${NODE_VERSION}

RUN npm install -g json-server

COPY json-server.json json-server.json

EXPOSE 80