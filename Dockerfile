# Creates a basic centos system with latest python 2 and 3 under /opt with project virtualenvs already created. 
FROM centos:7
MAINTAINER Kerry Hatcher <kwhatcher@gmail.com>
RUN yum update -y
RUN yum install wget -y
RUN curl -s https://setup.ius.io/ | bash
RUN yum update -y
RUN yum group install -y "Development tools"
RUN yum install -y python python35u python35u-devel python35u-libs python35u-pip python35u-tools python-pip python-virtualenv python-cffi libffi libffi-devel openssl openssl-libs pyOpenSSL openssl-devel yum-utils vim
RUN curl -s https://raw.githubusercontent.com/kerryhatcher/python-docker/master/python-3.5.sh | bash 
RUN curl -s https://raw.githubusercontent.com/kerryhatcher/python-docker/master/python-2.7.11.sh | bash
