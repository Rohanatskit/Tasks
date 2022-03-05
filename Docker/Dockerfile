FROM centos:7
RUN yum update -q -y && yum install sudo httpd firewalld httpd-tools -q -y
COPY audit.sh /audit.sh
COPY shell.sh /shell.sh
RUN chmod +x /audit.sh && chmod +x /shell.sh
RUN echo "ServerName 127.0.0.1" >> /etc/httpd/conf/httpd.conf
EXPOSE 80
CMD ["/bin/bash", "/shell.sh"]