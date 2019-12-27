# Summary of previously explained fundamentals

## Containers

A Linux® container is a set of one or more processes that are isolated from the rest of the system. 
All the files necessary to run them are provided from a distinct image, meaning that Linux containers are portable and consistent as they move from development, to testing, and finally to production. 

When we talk about containers we are not talking about virtualization.
Indeed, *Virtualization* lets your operating systems run simultaneously on a single hardware system, meanwhile *containers* share the same operating system kernel and isolate the application processes from the rest of the system. 
For example: ARM Linux systems run ARM Linux containers, x86 Linux systems run x86 Linux containers, x86 Windows systems run x86 Windows containers.
Linux containers are extremely portable, but they must be compatible with the underlying system.

![image](https://www.redhat.com/cms/managed-files/virtualization-vs-containers.png)


### Pros

- **Lightweight**
- **Increased portability**
- **More consistent operation**
- **Greater efficiency**
- **Better application development**


### Use Cases

- **Development environment**
- **Microservices architectures**
- **Programs Incompatibility**
- **High scalability requirement scenarios**
- **Portability requirement scenarios**
- **Simple installation of complex program**

### Containers Vs Virtual Machine

Containers and virtual machines have similar resource isolation and allocation benefits, but function differently because containers virtualize the operating system instead of hardware.
Containers are more portable and efficient.

### References and useful links

- [https://www.cncf.io/](https://www.cncf.io/)
- [https://www.netapp.com/us/info/what-are-containers.aspx](https://www.netapp.com/us/info/what-are-containers.aspx)
- [https://www.opencontainers.org/](https://www.opencontainers.org/)
- [https://linuxcontainers.org/](https://linuxcontainers.org/)
- [https://www.freebsd.org/doc/handbook/jails.html](https://www.freebsd.org/doc/handbook/jails.html)


## Docker

The word "DOCKER" refers to several things.

1. The IT software "Docker” is containerization technology that enables the creation and use of Linux® containers.
2. The [open source Docker community](https://forums.docker.com/) works to improve these technologies to benefit all users—freely.
3. The company, [Docker Inc.](https://www.docker.com/), builds on the work of the Docker community, makes it more secure, and shares those advancements back to the greater community. It then supports the improved and hardened technologies for enterprise customers.

The Docker technology uses the Linux kernel and features of the kernel, like [cgroups](https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/6/html/Resource_Management_Guide/ch01.html) and namespaces, to segregate processes so they can run independently.


### Images

A Docker image is a lightweight, standalone, executable package of software that includes everything needed to run an application: code, runtime, system tools, system libraries and settings.

Docker images are build starting from a specification file called `Dockerfile` and composed by a subsequent list of commands.


### Containers

Container images become containers at runtime and in the case of Docker containers - images become containers when they run on Docker Engine.
Available for both Linux and Windows-based applications, containerized software will always run the same, regardless of the infrastructure.
Containers isolate software from its environment and ensure that it works uniformly despite differences for instance between development and staging.


### Docker Hub

[Docker Hub](https://hub.docker.com/) is a service provided by Docker for finding and sharing container images with your team.
It provides the following major features:

- Repositories: Push and pull container images.
- Teams & Organizations: Manage access to private repositories of container images.
- Official Images: Pull and use high-quality container images provided by Docker.
- Publisher Images: Pull and use high- quality container images provided by external vendors. Certified images also include support and guarantee compatibility with Docker Enterprise.
- Builds: Automatically build container images from GitHub and Bitbucket and push them to Docker Hub.
- Webhooks: Trigger actions after a successful push to a repository to integrate Docker Hub with other services.

### References and useful links

- [https://hub.docker.com/](https://hub.docker.com/)
- [https://docs.docker.com/docker-hub/](https://docs.docker.com/docker-hub/)
- [https://www.docker.com/products/docker-hub](https://www.docker.com/products/docker-hub)
