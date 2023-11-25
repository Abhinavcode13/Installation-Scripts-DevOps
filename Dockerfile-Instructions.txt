-> Docker contains instructions to build docker image.
-> In Dockerfile , we will use DSL (Domain specific language) keywords.
-> Dokcer engine will process Dockerfile instructions from top to bottom.

DSL keyowrds : FROM , MAINTAINER , COPY , ADD , RUN , CMD , ENTRYPOINT , ENV , LABEL , USER , WORKDIR , EXPOSE , VOLUME.

FROM
+++++++++++++++
It indicates base image to run the application . On top of base image we will create our image.
Syntax : FROM <IMAGE-NAME>
Example : FROM tomcat:9.2

MAINTAINER
+++++++++++++++
Represents the author of the Dockerfile
Ex : MAINTAINER Abhinav kumar

COPY
+++++++++++++++

It is useed to copy file/folders to image while creating image.
Syntax : COPY <SOURCE> <DESTINATION>
Ex : COPY  target/maven-web-app.var /usr/local/tomcat/webapp/maven-app.var

ADD
+++++++++++++++
ADD is used to copy files to image while creating an image.
ADD keyword can download files from remote location (http)
ADD keyword is only used to extract tar files while copying to image.
Syntax : ADD <url-to-download> <destination>

RUN
+++++++++++++++
Used to execute commands on top of base image..
Run command instructions will execute while creating the image.
Ex : RUN mkdir workspace , RUN yum install git

CMD
+++++++++++++++
It is also used to execute the commands.
CMD instructions will execute while creating the conatiners.

![Docker-run-cmd](https://github.com/Abhinavcode13/Installation-Scripts-DevOps/assets/126642111/0a75ddcf-f329-4488-9abd-65f9bd4ce667)






