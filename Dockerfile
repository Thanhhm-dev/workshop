FROM node:18-alpine

RUN apk add --no-cache nginx python3 py3-pip bash

RUN npm install -g firebase-tools

RUN rm -rf /usr/share/nginx/html/*

COPY . /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
