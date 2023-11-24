# Search for Docker images with the specified name in the server
docker search image-name

# Display system-wide information about Docker
docker info

# Pull an image from a registry (Docker hub) - In first it checks the image locally in the machine else it download the docker image.
docker pull image-name

# Run a container based on a pulled or existing image
docker run image-name

# Display the logs of a specific container
docker logs container-id

# Display the history of an image
docker history image-name

# List all containers, including stopped ones
docker ps -a

# Execute a command inside a running container
docker exec -it container-name /bin/sh

# Kill a running container
docker kill container-id

# Stop a running container
docker stop container-id

# List all Docker networks
docker network ls

# Display detailed information about a specific network
docker network inspect network-name

# Push a tagged image to a Docker registry
docker push tagged-image-name

# Remove a Docker image
docker rmi image-name

# Remove a stopped or running container
docker rm container-id

# Rename a Docker container
docker rename old_container_name new_container_name

# Pause a running container
docker pause container-ID_or_name

# Unpause a paused container
docker unpause container-ID_or_name

# Display the public-facing port of a container
docker port container-ID_or_name

# Show changes in the filesystem of a container
docker diff container-ID_or_name

# Display the running processes of a container
docker top container-ID_or_name

# Display real-time resource usage statistics of containers
docker stats

# Log in to a Docker registry
docker login

# Log out from a Docker registry
docker logout

# Run a Docker container in the background with specified name and port mapping
docker run -d --name sonar -p 9000:9000 sonarqube:lts-community

#Tagging a docker image

docker tag <image-name> <username-of-dockerhub>/<image-name>

#Build a docker image

docker build -t <image-name>

#Pull the docker image

docker pull <image-name>
