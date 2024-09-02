## Docker version
```
$sudo docker version 
```  
## Docker help
```
$sudo docker help 
```
## Docker over all information
```
$sudo docker info
```
## Disk usage of docker images, containers, local volumes and build cache
```
$sudo docker system df 
```
## To check the files used in filesystem
```
$df
$df -h
$df -l
```
## To check any issues on docker host
```
$sudo docker system events 
```
## To check real time usage of memory, cpu, and net io
```
$sudo docker stats 
```
## To search docker image
```
$sudo docker search <image-name> 
$sudo docker search httpd 
```
## To check docker images
```
$sudo docker images 
```
## To pull docker image
```
$sudo docker pull <image-name> 
$sudo docker pull httpd 
```
## Disk usage of docker images, containers, local volumes and build cache
```
$sudo docker system df
```
  
## Docker create vs Docker run
+ **docker create** command is used to create container. But not running state. 
+ **docker run** command is used to create container and make it as running state. 
  
## To run docker container in foreground
```
$sudo docker run --name <container-name> <image-name> 
$sudo docker run --name web1 httpd 
```
## To list active container
```
$sudo docker ps 
```
## To list all containers
```
$sudo docker ps -a
```
## To run docker container in background
```
$sudo docker run -d --name <container-name> <image-name> 
$sudo docker run -d --name web2 httpd
```
  
## To list all containers
```
$sudo docker ps -a
```
  
## To login to running container
```
$sudo docker exec -it <container-name> /bin/bash 
$sudo docker exec -it web2 /bin/bash
```
  
## To exit from running container
```
$exit
```
  
## To perform action on container without login
```
$sudo docker exec <container-name> <actions> 
$sudo docker exec web2 uname -a 
$sudo docker exec web2 mkdir /tmp/latchu 
$sudo docker exec web2 ls /tmp
```
  
## To login to container and check again
```
$sudo docker exec -it <container-name> /bin/bash
$sudo docker exec -it web2 /bin/bash
#cd /tmp 
#ls 
<You can see a latchu directory> 
``` 
## To copy a file from local machine to docker container
```
$sudo docker cp <file-name> <container-name>:/directory 
$sudo docker cp local-file web2:/tmp 
$sudo docker exec web2 ls /tmp 
```
## To logon to container and check
```
$sudo docker exec -it <container-name> /bin/bash 
#cd /tmp 
<You can see a copied file>
```
  
## To copy a file from docker container to local system
```
$sudo docker cp <container-name>:/directory/file-name /localmachine/directory 
$sudo docker cp web2:/tmp/docker-file /home/ubuntu 
$ls -l /home/ubuntu 
<You can see a copied file> 
```
## To Stop a running docker container
```
$sudo docker stop <container-name> 
$sudo docker stop web2 
```
## To check docker container status
```
$sudo docker ps -a 
```
## To Start a stopped container
```
$sudo docker start <container-name> 
$sudo docker start web2
```
  
## To check docker container status
```
$sudo docker ps -a 
```

## Disk usage of docker images, containers, local volumes and build cache
```
$sudo docker system df
```
  
## To check real time usage of memory, cpu, and net io
```
$sudo docker stats
```
  
## To check docker contianer logs
```
$sudo docker logs <container-name> 
$sudo docker logs web2
```
  
## To check live logs of docker container
```
$sudo docker logs -f <container-name> 
$sudo docker logs -f web2 
```

## To remove a docker container forcely
```
$sudo docker rm -f <container-name> 
$sudo docker rm -f web2 
```
## To remove a docker container with safe mode
```
$sudo docker stop <container-name> 
$sudo docker stop web2 
$sudo docker rm <contaier-name> 
$sudo docker rm web2 
--
```
## To check docker container status
```
$sudo docker ps -a 
```

## To check status of specific docker container
```
$sudo docker stats <contianer-name> 
$sudo docker stats web2
```
  
## To check the running processes of a container
```
$sudo docker top <container-name> 
$sudo docker top web2
```
  
## To remove all stopped containers, all networks not used by at least one container, all dangling images and all dangling build cache.
```
$sudo docker system prune
```
