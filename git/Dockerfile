# version 2.9.5
# name git
FROM centos:6.7

RUN yum install -y openssl-devel zlib-devel gcc perl-ExtUtils-MakeMaker expat-devel gettext-devel curl-devel tar xz
ADD https://www.kernel.org/pub/software/scm/git/git-2.9.5.tar.xz /tmp/
RUN tar xvf /tmp/git-2.9.5.tar.xz -C /tmp/ && make prefix=/usr/local all -C /tmp/git-2.9.5 && make prefix=/usr/local install -C /tmp/git-2.9.5 && rm -rf /tmp/git*
