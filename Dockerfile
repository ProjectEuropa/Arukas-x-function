FROM centos:7.4.1708

RUN yum -y update
RUN yum -y install httpd
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]

WORKDIR /var/www/html
