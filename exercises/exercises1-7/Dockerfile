FROM ubuntu:22.04

WORKDIR /usr/src/app

COPY script.sh .

RUN apt update

RUN apt install -y curl

CMD bash script.sh
