# version 1.1
# name build-vod-client-sdk
FROM centos:6.7

RUN yum install -y gcc gcc-c++ make boost boost-devel tbb-devel glibc-devel libuuid-devel openssl-devel vim file strace zip unzip tree;yum -y clean all
RUN yum install -y ld-linux.so.2 libgcc_s.so.1 zlib.i686 ; yum -y clean all

VOLUME ["/usr/src", "/opt/toolchains"]
ENTRYPOINT ["/bin/bash"]
