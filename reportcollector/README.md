# How to run with docker

```bash
# Docker command to build and run
~$ docker build --build-arg VERSION=1.0.7.QR2 --tag reportcollector:1.0.7.QR2 .
~$ docker run -itd --rm --name rc -p 18080:8080 reportcollector:1.0.7.QR2
```

## How to attach running docker container 
```bash
~$ docker exec -it <container name> <command>
~$ docker exec -it rc /bin/bash
```
