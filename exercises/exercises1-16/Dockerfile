FROM node:20.13.1-alpine3.19

WORKDIR /usr/src/app

COPY . .

RUN npm install

EXPOSE 8080

ENV PORT=8080

CMD ["npm", "start"]