FROM centos
MAINTAINER Kai
RUN yum install httpd -y; yum clean all
RUN echo 'Hi Kai v1.' > /var/www/html/index.html
EXPOSE 80 443
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
