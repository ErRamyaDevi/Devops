## Introduction to containers:
#### Initially, we were having physical machines to run big datacenters. And then we were moving towards Virtual Machines i.e., EC2 in AWS / VM in Azure. Later on advancement of Virtual Machines are termed as Containers.


On top of host machine (physical server) , a loosely coupled software named "Hypervisor" will be installed to split the host machine into number of guest machine are termed as Virtual machines. 

## Hypervisor:
Hypervisor is using virtualization technology that will help us to create multiple virtual servers on the physical server. so, virtual server is logical seperation.

I.Q: Container is light weighted because it uses only partial OS and rest of the physical resources like Bins and libraries, Data storage, RAM, Network.
I.Q:Multiple Docke container in a single EC2 instance
## what is a container:
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

Why container?
+ In VM, one application cannot communicate with other as each VM are isolated and one application can be allowed to run in one VM.
+ In Container, Each VM contains multiple container on installation of Docker Engine (Docker Deamon) based on VM size. And, Each container runs an application. container A can communicate with Container B with help of Host operating system or Linux kernal or VM OS through physical resources.

VM always depends on hypervisor, but docker container doesn't because it can run even in single hosted machine where Docker Deamon is successfully installed.



# What is Docker?
Docker is a containerization platform
