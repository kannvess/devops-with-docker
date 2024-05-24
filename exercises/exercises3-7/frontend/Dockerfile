FROM node:16.20.2-alpine3.18

WORKDIR /usr/src/app

EXPOSE 5000

COPY . .

RUN npm install && \
    REACT_APP_BACKEND_URL=http://127.0.0.1:8080 npm run build && \
    npm install -g serve && \
    adduser -D appuser

USER appuser

CMD serve -s -l 5000 build
