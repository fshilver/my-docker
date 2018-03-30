# version 1.1
# name build-cdn
FROM centos:6.7

RUN yum install -y gcc gcc-c++ make boost boost-devel tbb-devel glibc-devel libuuid-devel openssl-devel vim file strace zip unzip tree;yum -y clean all

VOLUME /usr/src
ENTRYPOINT ["/bin/bash"]
