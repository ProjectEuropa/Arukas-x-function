FROM centos:7.4.1708

RUN yum -y update
RUN yum -y install httpd
RUN yum -y install git

WORKDIR /var/www/
RUN cd /var/www/
RUN git clone https://github.com/ProjectEuropa/Arukas-x-function.git files

RUN mv /var/www/files/* /var/www/html/

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
