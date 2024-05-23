#!/bin/sh

git clone https://github.com/$1.git

directory=$1

cd ${directory#*/}

docker build . -t $2

docker push $2