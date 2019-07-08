FROM centos:latest
MAINTAINER hisham.aderis@gmail.com
RUN yum install -y httpd
EXPOSE 80
ENV LogLevel "info"
USER apache
ENTRYPOINT ["/usr/sbin/httpd"]
CMD ["-D", "FOREGROUND"]
