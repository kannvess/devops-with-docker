FROM node:16.20.2-alpine3.18 as build-stage

WORKDIR /usr/src/app

COPY . .

RUN npm install && \
    REACT_APP_BACKEND_URL=http://127.0.0.1:8080 npm run build


FROM node:16.20.2-alpine3.18

WORKDIR /usr/src/app

EXPOSE 5000

RUN npm install -g serve && \
    adduser -D appuser

USER appuser

COPY --from=build-stage /usr/src/app/build /usr/src/app/build

CMD serve -s -l 5000 build
