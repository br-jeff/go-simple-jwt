FROM golang:1.22.0-alpine3.19
WORKDIR /app
COPY . .
ENV CGO_ENABLED=0
RUN go mod download
RUN go build -o /godocker
EXPOSE 8080
CMD [ “/godocker” ]