FROM ubuntu:24.04

WORKDIR /usr/src/app

EXPOSE 5000

COPY . .

RUN apt-get update && apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_16.x | bash && \
    apt install -y nodejs && \
    npm install && \
    REACT_APP_BACKEND_URL=http://127.0.0.1:8080 npm run build && \
    npm install -g serve && \
    apt-get purge -y --auto-remove curl && \
    rm -rf /var/lib/apt/lists/* && \
    useradd -m appuser

USER appuser

CMD serve -s -l 5000 build
