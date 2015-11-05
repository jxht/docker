FROM centos
MAINTAINER jxht  <jxht254922919@gmail.com>

RUN yum -y update
RUN yum -y upgrade

#安装nginx
RUN yum -y install epel-release
RUN yum -y install nginx

#安装php5.6
RUN rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
RUN yum -y install --enablerepo=remi --enablerepo=remi-php56 php php-fpm php-gd php-mysql php-mbstring php-redis

#安装redis
RUN yum -y install redis
