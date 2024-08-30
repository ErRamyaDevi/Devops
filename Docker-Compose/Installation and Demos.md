## Docker Compose Demo
### Install docker compose
```
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
```
### Clone the repo into your docker daemon host machine
```
git clone https://github.com/kohlidevops/DockerComposeFiles.git
cd DockerComposeFiles
```
### To build the docker images using Docker Compose
```
docker-compose build
```
//If you are facing any issues with above command do below things
```
docker system prune
docker-compose build --no-cache
```
![359840790-35cf6198-52b1-4f93-84c6-f2b34a0887bd](https://github.com/user-attachments/assets/01f6207b-3148-4a53-90a6-b1f9fc987a30)
![image](https://github.com/user-attachments/assets/d0e415f2-ab81-4226-8713-6579933b3719)


### To check the docker images
```
docker images
```
![359844321-662cb60b-dc59-41a2-a66b-a56dd54dd1b4](https://github.com/user-attachments/assets/71e23674-88d7-443f-8956-ef60b36a2013)
![image](https://github.com/user-attachments/assets/ef9cfad6-f363-4536-bd8c-5a114cd81439)


You can rename the docker image version and re-run the docker-compose command

//Docker-compose yaml file
```
image: anshuldevops/python_web:2.2
```
### To run the docker container using Docker Compose
```
docker-compose up
```
![359845672-8431e9ae-bd0d-496d-9b6b-6bbdcc328d07](https://github.com/user-attachments/assets/672a3993-df9f-4501-86bf-cf53c05448a9)
![image](https://github.com/user-attachments/assets/2244fbbf-fbe5-44a3-906b-26f2dda90d76)

### To check the container
```
docker ps -a
```
![359845935-ceb41516-214c-4760-abe2-55cbf259b497](https://github.com/user-attachments/assets/83acf835-fe7f-448e-abf0-f2592c4d447e)

## Deploy a Wordpress and MySQL using Docker compose
**search for yml file in your cloned repository**
```
git clone https://github.com/kohlidevops/DockerComposeWordpress
https://github.com/anshulc55/Docker_for_DevOps/blob/master/docker_compose_wordpress_mysql/docker-compose.yml
```
**else create a folder named "docker-compose.yml outside the repository i.e. in root os**
```
sudo nano docker-compose.yml
(add the code in this file)
```
**docker-compose up:** Runs containers in the foreground, with logs displayed in your terminal. The process is interactive, and stopping it will stop the containers.

**docker-compose up -d:** Runs containers in the background (detached mode), freeing up your terminal. The containers continue to run independently of your terminal session.
Both commands are used to start your Docker services, but the choice between them depends on whether you want to run them interactively (foreground) or in the background (detached).

**Build & start the container**
```
docker-compose build
docker-compose up -d
dockes ps
```
![image](https://github.com/user-attachments/assets/5164bcfb-db6c-4051-bd44-24f346d88317)
![image](https://github.com/user-attachments/assets/969a5a01-4dc5-462d-89d3-cba99e3d2638)

![360783951-77278eaf-24ab-4dd3-933a-4750b2f306ec](https://github.com/user-attachments/assets/182abc9e-3cde-47bc-a63c-8d04cc323369)
![image](https://github.com/user-attachments/assets/6c908ecd-d944-4872-8df1-846a7e5409bd)

### TO check the listening port
```
sudo apt-get update -y
sudo apt-get install net-tools -y
netstat -tnpl
```
> [!NOTE]
> Port 80 and port 8080 are both used for web servers, but port 80 is the default port for HTTP, while port 8080 is an alternative port.

> [!NOTE]
> Exit Code 0: Purposely Stopped

> [!NOTE]
> Exit code 1 : application error or an invalid image reference.You need to examine the container and its applications to find the root cause.

### To stop the container
```
docker-compose down
```
## Deploy a custom app using Docker Compose
```
https://github.com/kohlidevops/Docker_for_DevOps/tree/master/docker_compose_custom_app
docker-compose -f <custom-docker-filename> up -d
docker ps
```
### To list the Docker compose application
```
docker-compose ls
```
![361182218-611229c6-c91c-4830-a8e8-a3bfa5fff659](https://github.com/user-attachments/assets/1e82d05a-1425-4f26-b400-4965ab273a60)

### To check the logs of Docker compose application
```
docker-compose logs (default file name - docker-compose.yml)
docker-compose -f Docker-compose.yml logs (custom name)
```
![361182226-a0a29692-d3eb-4685-a0f5-c30175c5e231](https://github.com/user-attachments/assets/3b586ce9-4a60-4a5c-abd8-f5c59a130f5b)

To check the logs of specific service in Docker compose projects
```
docker-compose logs <service-name>
```
![361182316-a10e2eee-425c-4db0-8dc7-866217612719](https://github.com/user-attachments/assets/9e415550-6350-4c3e-a5cf-fe5f162f75c9)

### To check the top running process for the application in Docker compose projects
```
docker-compose top (Deafult yml filename)
docker-compose top <service-name>
docker-compose -f Docker-compose.yml top (custom filename)
```
![361182390-8b39d770-e6ce-4521-879b-23f101c02e65](https://github.com/user-attachments/assets/e2d77f23-47d6-4c05-bb6f-4f8fde856b0e)

### To check the live streaming resource usage of a Docker compose running containers
```
docker-compose stats (default)
docker-compose stats <service-name>
docker-compose -f Docker-compose.yml stats (custom yml filename)
```
### To live logs of Docker compose projects
```
docker-compose logs -f
docker-compose logs --follow
```
### To list the Docker compose container
```
docker-compose ps
```
### To login to the Docker compose application container
```
docker exec -it <container-name> /bin/bash
docker-compose exec <service-name> /bin/bash
```
![image](https://github.com/user-attachments/assets/a73ca6a0-5666-446f-bba6-28567390363d)

![361183932-27c62970-589d-44f8-900c-9eba91b812a7](https://github.com/user-attachments/assets/dd10a7cb-d3d8-45f9-bf10-6ba8c0d99fce)

# /if nothings works out for checking logs, please try below:
```
docker-compose -f <Yamlfilename><Docker-compose.yml> <cmd>
*cmd - top,stats,log,exec
```
