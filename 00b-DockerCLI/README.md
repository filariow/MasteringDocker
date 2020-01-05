# Docker Command Line Interface (CLI)

## Fundamentals

### docker help

To display an exaustive help 

```
docker help <COMMAND>
```


### System analysis

Use `docker system` to obtain info about the system.

```
docker help system

Usage:  docker system COMMAND

Manage Docker

Commands:
  df          Show docker disk usage
  events      Get real time events from the server
  info        Display system-wide information
  prune       Remove unused data

Run 'docker system COMMAND --help' for more information on a command.
```


### Cleanup

Particularly important is the disk usage facilities: docker will require a lot of disk if you do not cleanup.
I invite you to monitor the space it uses and remove dangling images and stopped images by the mean of the `prune` commands.

```
docker container prune
docker image prune
```
Another command to delete all containers including its volumes:

```
docker rm -vf $(docker ps -a -q)
```
To delete all the images:
```
docker rmi -f $(docker images -a -q)
```