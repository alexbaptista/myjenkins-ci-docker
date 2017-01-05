Instructions for Project (myjenkins-ci-docker)
========================================

## About

* My customized image from Jenkins with configuration for execute jobs (Docker in Docker).

## Configuration

### Build the image

```
docker build -t csalexbaptista/myjenkins-ci-docker .
```

### Run the image

```
docker run --name jenkins -d -p 8080:8080 -p 50000:50000 \
-v /home/jenkins:/var/jenkins_home \
-v /var/run/docker.sock:/var/run/docker.sock \
-v $(which docker):/usr/bin/docker --privileged=true \
csalexbaptista/myjenkins-ci-docker
```
