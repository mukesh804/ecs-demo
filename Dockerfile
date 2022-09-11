FROM centos:7
RUN yum install epel-release -y
RUN yum install httpd php php-cli  php-mysql -y
COPY index.html /var/www/html/
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
