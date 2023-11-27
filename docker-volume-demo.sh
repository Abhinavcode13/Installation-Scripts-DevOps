#Testing of the docker volume concept (sharing of data of one container to another container)

#Pulling the ngnix image from dockerdhub
$ docker pull ngnix
#Running ngnix image using docker

#Note: Access static website using ec-2 VM which is hosted by ngnix

#Modify the static webiste index.html page
$ docker name --name=webapp1 -d -p 80:80 ngnix
$ docker exec -it webapp1 bash
$ cd /usr/share/ngnix/html
$ echo "Welcome to application" > index.html

#Note: Access static website using ec-2 VM which is hosted by ngnix (Modified content should be displayed)
#Stop docker container
$ docker stop <container-id>

#Note: Access static website using ec-2 VM which is hosted by ngnix (changes we made in first container will not be displayed here)
#start another docker container named as webapp2
$ docker name --name=webapp2 -d -p 80:80 ngnix

#stop the docker container
$ docker stop <container-id>


#create a new docker volume
$ docker volume create <container-name>
#start docker container by mounting docker volume
$ docker run -d --name=webapp20 --mount source=new-vol,destination=/usr/share/ngnix/html -p 80:80 ngnix

#Note: Access static website using ec-2 VM which is hosted by ngnix
$ docker exec -it webapp1 bash
$ cd /usr/share/ngnix/html
$ echo "Welcome to application" > index.html

#Note: Access static website using ec-2 VM which is hosted by ngnix

#stop the docker container
$ docker stop <container-id>
#run another docker container (modified data should reflect here also)
$ docker run -d --name=webapp20 --mount source=new-vol,destination=/usr/share/ngnix/html -p 80:80 ngnix



Host directory mounting to docker container
+++++++++++++++++++++++++++++++++++++++++++

#Create directory in the host machine
$ mkr dir /temp/ngnix/html

#run the docker container for ngnix image with directory mounting (container name is c1)
$ docker run -d -p 80:80 -v /temp/ngnix/html:/usr/share/ngnix/html --name=c1 ngnix:latest

#check the container is running or not
$ docker conatiner ls

#access ngnix webserver using ec2 public ip address (It will not be displayed beacuse index.html is not available in the container)

#Go to mounted directory in VM machine
$ cd/temp/ngnix/html

#create index.html file (save the file and close it)
$ vi index.html
