FROM node:alpine3.17 AS build
WORKDIR /APP
ENV NODE_VERSION 18.17.1
COPY package.json /APP
COPY package-lock.json /APP
RUN npm install --legacy-peer-deps
COPY . /APP/
RUN npm run build
