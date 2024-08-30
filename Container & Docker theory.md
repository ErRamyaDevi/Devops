## Introduction to containers:
#### Initially, we were having physical machines to run big datacenters. And then we were moving towards Virtual Machines i.e., EC2 in AWS / VM in Azure. Later on advancement of Virtual Machines are termed as Containers.


On top of host machine (physical server) , a loosely coupled software named "Hypervisor" will be installed to split the host machine into number of guest machine are termed as Virtual machines. 

## Hypervisor:
Hypervisor is using virtualization technology that will help us to create multiple virtual servers on the physical server. so, virtual server is logical seperation.

### I.Q: Container is light weighted because it uses only partial OS and rest of the physical resources like Bins and libraries, Data storage, RAM, Network.
### I.Q: Multiple Docker container in a single EC2 instance

## what is a container?
A container is like a small, portable, and self-sufficient unit that contains everything needed to run a specific application. This includes the application itself, the libraries, tools, runtime, and minimal system dependencies required by the application.

### Key Concepts:
### + self-contained:
    A container is like a small, portable, and self-sufficient unit that contains everything needed to run a specific application. This includes the application itself, the libraries, tools, runtime, and minimal system dependencies required by the application.
### + Docker Container Images
    These are templates used to create containers. They bundle the application code, runtime, libraries, and settings needed to run the application. This makes the application run consistently regardless of where it's deployed.
### + Reliability and Speed:
    Containers ensure that the application runs reliably by keeping the environment consistent across different deployment scenarios. They promote quick and seamless deployment, making it easier to move applications between development, testing, and production environments.

  # Docker file --(build)---> Docker Image ---(Run)---> Docker Container
   Before creating container, we have to deploy our code locally / manually and then image and then container.

  ![217262726-7cabcb5b-074d-45cc-950e-84f7119e7162](https://github.com/user-attachments/assets/694bcc6a-f433-4aa0-891d-bd409e2c97f7)

## Why container?
+ In VM, one application cannot communicate with other as each VM are isolated and one application can be allowed to run in one VM.
+ In Container, Each VM contains multiple container on installation of Docker Engine (Docker Deamon) based on VM size. And, Each container runs an application. container A can communicate with Container B with help of Host operating system or Linux kernal or VM OS through physical resources.

VM always depends on hypervisor, but docker container doesn't because it can run even in single hosted machine where Docker Deamon is successfully installed.

## Containers vs Virtual Machine
### Containers and virtual machines are both technologies used to isolate applications and their dependencies, but they have some key differences:

**1. Resource Utilization**

#### Containers:

***Shared OS Kernel:*** Containers share the host operating system kernel, which makes them lightweight.

***Efficiency:*** Since they don't require a full OS, they use fewer system resources, making them faster and more efficient.

#### Virtual Machines (VMs):

***Full OS and Hypervisor:*** Each VM runs a complete operating system on top of a hypervisor.

***Resource Intensive:*** This makes VMs more resource-intensive as they require more memory and processing power.

##### Example:

If you have 5 applications to run, using containers might only require the resources equivalent to one full OS. Using VMs, you might need 5 separate OS instances, significantly increasing resource usage.

**2. Portability**

#### Containers:

***High Portability:*** Containers are designed to be portable and can run on any system with a compatible container runtime (like Docker).

***Consistency:*** They ensure the application behaves the same regardless of where they are deployed.

#### Virtual Machines (VMs):

***Dependent on Hypervisor:*** VMs need a compatible hypervisor (like VMware, Hyper-V) to run, making them less portable.

***Migration:*** Moving VMs between different environments can be more complex.

##### Example:

You can take a containerized application from your laptop to a cloud server without any changes. For a VM, you might need to ensure the cloud server supports the specific hypervisor used by your VM.

**3. Security**

#### Containers:

***Shared OS:*** Containers share the host operating system, which can pose a security risk if one container is compromised.

***Isolation:*** While they provide some level of isolation, it’s less robust compared to VMs.

#### Virtual Machines (VMs):

***Full Isolation:*** Each VM has its own OS and is isolated from the host and other VMs, providing stronger security boundaries.

***Higher Security:*** If one VM is compromised, it’s less likely to affect others.

##### Example:

In a multi-tenant environment, using VMs can prevent one tenant’s compromised VM from affecting others. Containers might require additional security measures to achieve the same level of isolation.

**4. Management**

#### Containers:

***Ease of Management:*** Containers are lightweight and can be started, stopped, and scaled quickly.

***Orchestration Tools:*** Tools like Kubernetes make it easier to manage large numbers of containers.

##### Virtual Machines (VMs):

***Complex Management:*** VMs are heavier and take longer to start and stop.

***Traditional Tools:*** Managing VMs often requires more traditional and complex management tools.

##### Example:

Deploying a new version of an application can be done in seconds with containers, but might take minutes or longer with VMs due to their larger size and longer startup times.

## I>Q: Why are containers light weight ?
    Containers are lightweight because they use a technology called containerization, which allows them to share the host operating system's kernel and libraries, while still providing isolation for the application and its dependencies. This results in a smaller footprint compared to traditional virtual machines, as the containers do not need to include a full operating system. Additionally, Docker containers are designed to be minimal, only including what is necessary for the application to run, further reducing their size.

# What is Docker?
### Files and Folders in containers base images
    /bin: contains binary executable files, such as the ls, cp, and ps commands.

    /sbin: contains system binary executable files, such as the init and shutdown commands.

    /etc: contains configuration files for various system services.

    /lib: contains library files that are used by the binary executables.

    /usr: contains user-related files and utilities, such as applications, libraries, and documentation.

    /var: contains variable data, such as log files, spool files, and temporary files.

    /root: is the home directory of the root user.
    
### Files and Folders that containers use from host operating system
    + The host's file system: Docker containers can access the host file system using bind mounts, which allow the container to read and write files in the host file system.

    + Networking stack: The host's networking stack is used to provide network connectivity to the container. Docker containers can be connected to the host's network directly or through a virtual network.

    + System calls: The host's kernel handles system calls from the container, which is how the container accesses the host's resources, such as CPU, memory, and I/O.

    + Namespaces: Docker containers use Linux namespaces to create isolated environments for the container's processes. Namespaces provide isolation for resources such as the file system, process ID, and network.

    + Control groups (cgroups): Docker containers use cgroups to limit and control the amount of resources, such as CPU, memory, and I/O, that a container can access.
    
> [!NOTE]
> It's important to note that while a container uses resources from the host operating system, it is still isolated from the host and other containers, so changes to the container do not affect the host or other containers.

Container base images are typically smaller compared to VM images because they are designed to be minimalist and only contain the necessary components for running a specific application or service. VMs, on the other hand, emulate an entire operating system, including all its libraries, utilities, and system files, resulting in a much larger size.

# Docker
### What is Docker ?
Docker is a containerization platform that provides easy way to containerize your applications, which means, using Docker you can build container images, run the images to create containers and also push these containers to container regestries such as DockerHub.

In simple words, you can understand as containerization is a concept or technology and Docker Implements Containerization.

Docker Architecture ?
![image](https://github.com/user-attachments/assets/ee35b99e-728c-4698-a80b-ec816180be48)


The above picture, clearly indicates that Docker Deamon is brain of Docker. If Docker Deamon is killed, stops working for some reasons, Docker is brain dead.

### Docker LifeCycle:
There are three important things,

**docker build** -> builds docker images from Dockerfile
**docker run** -> runs container from docker images
**docker push** -> push the container image to public/private regestries to share the docker images.
![image](https://user-images.githubusercontent.com/43399466/217511949-81f897b2-70ee-41d1-b229-38d0572c54c7.png)

## ***Understanding the terminology***
### Docker daemon
The Docker daemon (dockerd) listens for Docker API requests and manages Docker objects such as images, containers, networks, and volumes. A daemon can also communicate with other daemons to manage Docker services.

### Docker client
The Docker client (docker) is the primary way that many Docker users interact with Docker. When you use commands such as docker run, the client sends these commands to dockerd, which carries them out. The docker command uses the Docker API. The Docker client can communicate with more than one daemon.

### Docker Desktop
Docker Desktop is an easy-to-install application for your Mac, Windows or Linux environment that enables you to build and share containerized applications and microservices.

### Docker registries
A Docker registry stores Docker images. Docker Hub is a public registry that anyone can use, and Docker is configured to look for images on Docker Hub by default. You can even run your own private registry.

When you use the docker pull or docker run commands, the required images are pulled from your configured registry. When you use the docker push command, your image is pushed to your configured registry.

### Docker objects

When you use Docker, you are creating and using images, containers, networks, volumes, plugins, and other objects. This section is a brief overview of some of those objects.

### Dockerfile
Dockerfile is a file where you provide the steps to build your Docker Image.

### Images
An image is a read-only template with instructions for creating a Docker container. Often, an image is based on another image, with some additional customization. For example, you may build an image which is based on the ubuntu image, but installs the Apache web server and your application, as well as the configuration details needed to make your application run.

You might create your own images or you might only use those created by others and published in a registry. To build your own image, you create a Dockerfile with a simple syntax for defining the steps needed to create the image and run it. Each instruction in a Dockerfile creates a layer in the image. When you change the Dockerfile and rebuild the image, only those layers which have changed are rebuilt. This is part of what makes images so lightweight, small, and fast, when compared to other virtualization technologies.
