# Version: static_web 0.0.1
FROM ubuntu:14.04
MAINTAINER linsan  songhua.liu1988@gmail.com
ENV REFRESHED_AT 2016_2_21
RUN apt-get -yqq update
RUN apt-get install -y nginx
RUN echo 'Hi, I am in your container' >/usr/share/nginx/html/index.html
EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx"]
CMD ["-h"]
