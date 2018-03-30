# Dockerfile for Report Collector

```bash
# build Docker image
~$ ./build.sh

# run Docker container
~$ docker run -itd --rm --name ${container_name} \
			-v ${host_conf_dir}:/castis/bin/tomcat/conf/reportCollector \
			-v ${host_log_dir}:/castis/log/reportCollector_log \
			-v ${host_data_dir}:/DATA/report \
			-p ${host_port}:8080 reportcollector:${version}
```

## How to attach running docker container 
```bash
~$ docker exec -it <container name> <command>
~$ docker exec -it rc /bin/bash
```
