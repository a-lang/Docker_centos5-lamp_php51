############################################################
# Dockerfile to build LAMP with PHP 5.1.x container images
# Based on CentOS 5
############################################################
FROM centos:centos5
MAINTAINER A-Lang <alang.hsu@gmail.com>

RUN rpm --import http://mirror.centos.org/centos/RPM-GPG-KEY-CentOS-5
RUN yum -y update

RUN yum -y install mysql-server
RUN yum -y install httpd php php-mbstring php-mysql
RUN yum -y install wv links pdftohtml tidy html2ps

ADD ./startup.sh /opt/startup.sh
RUN chmod +x /opt/startup.sh
RUN echo "/opt/startup.sh" >> /etc/bashrc

EXPOSE 80 873
CMD ["/bin/bash"]
