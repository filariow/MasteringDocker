# Container Registry

<!-- TODO: What is a Container Registry -->

## Docker Hub

## Private Container Registry

- Docker Hub
- Azure Container Registry (ACR)
- Amazon Elastic Container Registry (ECR)
- ...


## docker login

To perform login against the Container Registry.
The information will be stored in the OS and used by the docker CLI to authenticate subsequent requests.

```bash
docker help login

Usage:	docker login [OPTIONS] [SERVER]

Log in to a Docker registry.
If no server is specified, the default is defined by the daemon.

Options:
  -p, --password string   Password
      --password-stdin    Take the password from stdin
  -u, --username string   Username
```


## docker pull

To pull a docker image from a registry

```bash 
docker help pull

Usage:	docker pull [OPTIONS] NAME[:TAG|@DIGEST]

Pull an image or a repository from a registry

Options:
  -a, --all-tags                Download all tagged images in the repository
      --disable-content-trust   Skip image verification (default true)
  -q, --quiet                   Suppress verbose output
```

## docker push
### To push a docker image in Docker Hub

```
TAG_VERSION=1.0
```
Build image
```
docker build -t <hub-user>/<repo-name>:'${TAG_VERSION}' .
```

Push image in Docker Hub
```
docker push <hub-user>/<repo-name>:'${TAG_VERSION}'
```


### To push a docker image in local registry

```
DOCKER_REGISTRY_URL=...
DOCKER_REGISTRY_PORT=...
TAG_VERSION=1.0
```
Build the same image with two tag
```
docker build -t ${DOCKER_REGISTRY_URL}:${DOCKER_REGISTRY_PORT}/<repo-name>:latest -t ${DOCKER_REGISTRY_URL}:${DOCKER_REGISTRY_PORT}/<repo-name>:'${TAG_VERSION}' .
```

Push image in a docker registry
```
docker push ${DOCKER_REGISTRY_URL}:${DOCKER_REGISTRY_PORT}/<repo-name>:'${TAG_VERSION}'
docker push ${DOCKER_REGISTRY_URL}:${DOCKER_REGISTRY_PORT}/<repo-name>:latest
```


---

# Next 

- Exercise 1: [Log-in into Docker Hub](Ex-01.md) from docker cli 
- Next section: some practice with the principal [Docker CLI commands](../03-RunContainerRun)
