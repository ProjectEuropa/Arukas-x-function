FROM centos:7.4.1708

RUN yum -y update
RUN yum -y install httpd

RUN rm -r /var/www/html
RUN git clone https://github.com/ProjectEuropa/Arukas-x-function.git html

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
WORKDIR /var/www
