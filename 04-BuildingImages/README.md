# Images

A Docker image is a lightweight, standalone, executable package of software that includes everything needed to run an application: code, runtime, system tools, system libraries and settings.

Docker images are build starting from a specification file called `Dockerfile` and composed by a subsequent list of commands.

Each image is characterized by an docker assigned id and a list of human-friendly tags.


## List all the images

To display all the images present on the local machine we can use the `docker image ls` command, or the aliases `docker image list` and `docker images`.

It is possible to add a word after the command to specify a image name filter.

```
docker help image ls       

Usage:  docker image ls [OPTIONS] [REPOSITORY[:TAG]]

List images

Aliases:
  ls, images, list

Options:
  -a, --all             Show all images (default hides intermediate images)
      --digests         Show digests
  -f, --filter filter   Filter output based on conditions provided
      --format string   Pretty-print images using a Go template
      --no-trunc        Don't truncate output
  -q, --quiet           Only show numeric IDs
```


## Building new Images and Dockerfiles

To create a new Docker image it is required a `Dockerfile`, which describes the image itself and the process to build it.

Important keywords:
- FROM 
- COPY
- RUN
- CMD
- ENTRYPOINT
- EXPOSE
- ENV
- WORKDIR
- ARG

For more details you can refer to [https://docs.docker.com/engine/reference/builder/](https://docs.docker.com/engine/reference/builder/).


## Best Practices

https://docs.docker.com/v17.09/engine/userguide/eng-image/dockerfile_best-practices/#run

---

# Next

- Exercises:
  - [Fun with images](./Ex-01.md) 
  - [My first Docker image](./Ex-02.md) 
  - [A more complex image](./Ex-03.md) 
  - [A multi-stage image](./Ex-04.md) 
- Next section: [Docker-Compose in action](../04-DockerCompose)
