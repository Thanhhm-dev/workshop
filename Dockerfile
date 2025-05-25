FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

RUN apk add --no-cache python3 py3-pip curl bash

RUN curl -fsSL https://nodejs.org/dist/v18.20.0/node-v18.20.0-linux-x64.tar.xz -o node.tar.xz \
    && tar -xf node.tar.xz -C /usr/local --strip-components=1 \
    && rm node.tar.xz

RUN node -v && npm -v

RUN npm install -g firebase-tools

COPY . /usr/share/nginx/html

EXPOSE 80
