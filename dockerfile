FROM golang:1.22.0-alpine3.19

WORKDIR /usr/src/app

COPY go.mod ./
RUN go mod download && go mod verify

COPY . .

RUN go build -o /usr/local/bin/app
EXPOSE 8080

CMD [ "app" ]