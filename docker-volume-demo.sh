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

#Note: Access static website using ec-2 VM which is hosted by ngnix
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
