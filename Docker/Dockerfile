FROM centos:7
RUN yum update -q -y && yum install sudo httpd firewalld httpd-tools -q -y
COPY audit.sh /audit.sh
RUN chmod +x /audit.sh
RUN sh /audit.sh > /var/www/html/index.html
EXPOSE 80
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
