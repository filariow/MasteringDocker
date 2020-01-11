# What is going to happen

It is a practical session where we will practice the fine arts of Dockerfile creation, image building, and container running.
Furthermore, we will create and deploy container-based environments using Docker-Compose.


# When and where

The Meetup is scheduled for the 20th of January 2020 in Rome at [LUISS EnLabs](https://www.luissenlabs.com/), Termini station.


# Tools best to have

Before attending the event, please install the following tools:
- [Docker Engine](https://docs.docker.com/install/)/[Docker Desktop](https://www.docker.com/products/docker-desktop).
- Git/[Git for Windows](https://gitforwindows.org/)
- [Visual Studio Code](https://code.visualstudio.com/) and its [Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension.


Also pull some Docker images using the following commands:

```
docker pull golang:1.13
docker pull mcr.microsoft.com/dotnet/core/aspnet:3.1
docker pull mcr.microsoft.com/dotnet/core/sdk:3.1
docker pull mongo
docker pull mongo-express
docker pull bash
```

# Schedule

1. Intro                                        [10 min]
   1. What are we going to do
   2. Checks of needed tools: WiFi, Softwares, etc.
2. Fundamental                                  [10 min]
   1. Containers
   2. Images 
   3. Registries 
3. Playing with Docker CLI                      [20 min]
   1. image: pull, list, inspect, remove, tag
   2. container: run, stop, start, remove
   3. cleanup the system: prune images and containers
4. Image Building                               [30 min]
   1. Demos [10 min]
   2. Hands On [20 min]
5. Docker Compose                               [10 min]
6. Develop in Container                         [30 min]
7. Q&A                                          [10 min]

***

Let start the journey with a [Summary of previously explained fundamentals](https://github.com/FrancescoIlario/MasteringDocker/tree/master/00-Previously#summary-of-previously-explained-fundamentals)
