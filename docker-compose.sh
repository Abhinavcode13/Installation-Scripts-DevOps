-> In real world applications are developed using microservices architecture.
-> In microservices architecture several apis will be available.
-> Every API is project and it should run using a contanier.
-> Running all/multiple containers manually is a difficult task.

-> To solve this problem we use docker-compose , docker compose is a tool which is used manage multi container based applications.

-> docker compose filename : docker-compose.yml

sample docker-compose.yml file

version :
services :
network :
volumes :

#Create and start the containers
$ docker-compose up
# List docker containers started by docker containers
$ docker-compose ps
#stop or remove containers
$ docker-compose down
#list down running docker images
$ docker-compose images

