# version 1.0
# name pyenv
FROM centos:6.7

RUN yum install -y openssl-devel zlib-devel gcc perl-ExtUtils-MakeMaker expat-devel gettext-devel curl-devel tar xz && yum clean all

ADD https://www.kernel.org/pub/software/scm/git/git-2.9.5.tar.xz /tmp/

RUN tar xvf /tmp/git-2.9.5.tar.xz -C /tmp/ && make prefix=/usr/local all -C /tmp/git-2.9.5 && make prefix=/usr/local install -C /tmp/git-2.9.5 && rm -rf /tmp/git*

RUN curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash

RUN yum install -y bzip2 bzip2-devel readline-devel sqlite sqlite-devel
