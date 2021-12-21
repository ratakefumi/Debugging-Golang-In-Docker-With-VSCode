FROM golang:1.17.2-alpine

WORKDIR /app
COPY . /app

RUN apk add --no-cache g++ git

RUN go get github.com/go-delve/delve/cmd/dlv

#CMD ["dlv", "debug", "github.com/olivere/go-container-debugging", "--headless", "--listen=:6379", "--api-version=2", "--log"]
