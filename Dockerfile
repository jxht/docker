FROM centos
MAINTAINER jxht  <jxht254922919@gmail.com>

RUN yum -y update
RUN yum -y upgrade

#安装nginx
RUN yum -y install epel-release
RUN yum -y install nginx

#安装php
RUN yum -y install php php-fpm php-gd php-mysql php-mbstring php-redis

#安装redis
RUN yum -y install redis
