FROM     centos:centos7

MAINTAINER Karthik(Kicky)


RUN yum install -y \
    epel-release \
    openssl-devel \
    readline-devel\
    zlib-devel \
    wget \
    curl \
    git \
    dtach \
    vim \
    hash-slinger \
    bzip2 \
    tar \
    ImageMagick \
    ImageMagick-devel \
    libffi-devel \
    mysql \
    mysql-devel \
    libxslt-devel \
    redis \
    python \
&&  yum groupinstall "Development Tools" -y \
&&  yum install -y --enablerepo=epel \
    nodejs \
    npm \
&&  yum clean all

# pip install
RUN wget https://bootstrap.pypa.io/get-pip.py \
&&  python get-pip.py

#
RUN \cp -p /usr/share/zoneinfo/Asia/Kolkata /etc/localtime \
&&  echo 'ZONE="Asia/Kolkata"' > /etc/sysconfig/clock
