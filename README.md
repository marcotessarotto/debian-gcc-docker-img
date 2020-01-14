# debian-gcc-docker-img
create a docker image based on Linux Debian with gcc, git, ssh server and user "utente" (with password "units").

Note on using ssh in docker:

https://jpetazzo.github.io/2014/06/23/docker-ssh-considered-evil/


to build image with docker:
```
docker build --tag=debian-gcc-docker-img .
```

run image (starts bash):
```
docker run -it -p 2222:22 debian-gcc-docker-img
```
in bash:

**start ssh service on port 22 (reachable on port 2222 from outside the container)**
```
service ssh start 
```
**to switch to user "utente"**
```
su - utente
```
