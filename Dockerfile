FROM centos:7.4.1708

RUN yum -y update

RUN yum -y install epel-release
RUN yum -y install http://rpms.remirepo.net/enterprise/remi-release-7.rpm

RUN yum -y upgrade
RUN yum -y install nginx
RUN yum -y install git

WORKDIR /var/www/
RUN cd /var/www/
RUN git clone https://github.com/ProjectEuropa/Arukas-x-function.git files

RUN mv /var/www/files/* /var/www/html/

CMD ["nginx", "-g", "daemon off;"]
