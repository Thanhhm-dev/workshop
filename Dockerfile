FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

# Dùng apk để cài python3-pip, nodejs, npm, curl, bash
RUN apk add --no-cache python3 py3-pip nodejs npm curl bash

# Cài firebase-tools qua npm
RUN npm install -g firebase-tools

COPY . /usr/share/nginx/html

EXPOSE 80
