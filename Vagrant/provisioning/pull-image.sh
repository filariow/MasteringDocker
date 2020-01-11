#!/bin/bash

echo "Starting pulling image....."
docker pull mcr.microsoft.com/dotnet/core/aspnet:3.1
docker pull mcr.microsoft.com/dotnet/core/sdk:3.1

#02-RunContainerRun Ex-01
docker pull hello-world

#03-BuildingImages Ex-03
docker pull bash

#03-BuildingImages Ex-04
docker pull golang:1.13

docker pull alpine:latest

#04-DockerCompose Ex-01
docker pull mongo:latest

docker pull mongo-express:latest

echo "Pulling image done."