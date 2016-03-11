FROM centos:centos7
MAINTAINER Jono Wells <jono@kz8s.io>

RUN set -ex &&\
  yum -y update &&\
  yum -y install epel-release &&\
  yum -y clean all

CMD [ "cat", "/etc/os-release" ]
