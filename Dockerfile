# Version: static_web 0.0.1
FROM ubuntu:14.04
MAINTAINER Jesse  songhua.liu1988@gmail.com
ENV REFRESHED_AT 2016_2_29
RUN apt-get -yqq update
RUN apt-get install -y ruby ruby-dev build-essential redis-tools
RUN gem install --no-rdoc --no-ri sinatra json redis


RUN mkdir -p /opt/webapp
EXPOSE 80
CMD ["/opt/webapp/bin/webapp"]
