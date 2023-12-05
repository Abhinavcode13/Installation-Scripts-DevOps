Docker swarm
++++++++++++

-> Docker Swarm is a orchestration tool provided by docker software - In simple words managing the process.
-> Docker swarm is used to setup docker clusters (load balancing) - Cluster is group of services
-> In this we have two nodes as master and worker node in which master will schedule the tasks and monitor failure of nodes and worker node worker nodes will perform the actions.

Setup
+++++

Create 3 EC2 instances (Ubuntu) - 2 for nodes server and one for master server.
Note : Enable 2377 port number for docker swarm

$ curl -fsSL https://get.docker.com -o get-docker.sh
$ sudo sh get-docker.sh

To install master node in the master server command is 
$ sudo docker swarm init --avertise-addr <public-ip-address-of-ubuntu-machine>
$ sudo docker swarm join-token worker - To add master node in the machine
$ sudo docker swarm join-token worker - To add worker node in the machine
