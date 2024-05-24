FROM golang:1.16.15-alpine3.15 AS build-stage

WORKDIR /usr/src/app

COPY . .

RUN CGO_ENABLED=0 go build


FROM scratch

WORKDIR /usr/src/app

ENV PORT=8080
ENV REQUEST_ORIGIN=http://127.0.0.1:5000

EXPOSE 8080

COPY --from=build-stage /usr/src/app/server /usr/src/app/server

ENTRYPOINT [ "/usr/src/app/server" ]