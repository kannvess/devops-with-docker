FROM golang:1.16

WORKDIR /usr/src/app

ENV PORT=8080
ENV REQUEST_ORIGIN=http://localhost

EXPOSE 8080

COPY . .

RUN go build

RUN go test ./...

CMD ./server
