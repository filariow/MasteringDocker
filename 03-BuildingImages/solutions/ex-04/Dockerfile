FROM golang:1.13 as build
WORKDIR /hw
COPY main.go main.go
RUN CGO_ENABLED=0 GOOS=linux go build -o hw main.go 

FROM alpine:latest as prod 
RUN apk add ca-certificates
COPY --from=build /hw/hw /usr/bin/hw
CMD ["hw"]