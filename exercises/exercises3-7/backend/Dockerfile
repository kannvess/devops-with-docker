FROM golang:1.16.15-alpine3.15

WORKDIR /usr/src/app

ENV PORT=8080
ENV REQUEST_ORIGIN=http://127.0.0.1:5000

EXPOSE 8080

COPY . .

RUN go build && \
    adduser -D appuser

USER appuser

CMD ./server
