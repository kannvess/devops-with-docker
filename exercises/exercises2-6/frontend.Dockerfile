FROM ubuntu:24.04

WORKDIR /usr/src/app

EXPOSE 5000

RUN apt update

RUN apt install -y curl

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash

RUN apt install -y nodejs

COPY . .

RUN npm install

RUN REACT_APP_BACKEND_URL=http://127.0.0.1:8080 npm run build

RUN npm install -g serve

CMD serve -s -l 5000 build
