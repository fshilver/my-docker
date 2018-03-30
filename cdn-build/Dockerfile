FROM centos:6.7

RUN yum install -y gcc gcc-c++ make boost boost-devel tbb-devel glibc-devel libuuid-devel openssl-devel vim;yum -y clean all

VOLUME /usr/src
ENTRYPOINT ["/bin/bash"]
