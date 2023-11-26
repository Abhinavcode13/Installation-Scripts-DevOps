#!/bin/bash
sudo apt update -y

sudo apt install apt-transport-https ca-certificates curl software-properties-common -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" -y

sudo apt update -y

apt-cache policy docker-ce -y

sudo apt install docker-ce -y

#sudo systemctl status docker

sudo chmod 777 /var/run/docker.sock

+++++++++++++++ Docker install in Amazon linux +++++++++++++

$ sudo yum update -y
$ sudo yum install docker -y
$ sudo service docker start
$ sudo usermod -aG docker ec2-user(server name)

$ docker info
$ docker --v

Restart the session 
$ exit

Press R to restart the session in Mobaxterm


