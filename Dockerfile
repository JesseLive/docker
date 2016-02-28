# Version: static_web 0.0.1
FROM ubuntu:14.04
MAINTAINER Jesse  songhua.liu1988@gmail.com
ENV REFRESHED_AT 2016_2_28
RUN apt-get -yqq update
RUN apt-get install -y -q nginx
RUN mkdir -p /var/www/html
ADD nginx/global.conf /etc/nginx/conf.d/
ADD nginx/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
