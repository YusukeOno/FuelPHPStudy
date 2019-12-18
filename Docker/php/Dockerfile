FROM centos:7

ENV PHP_VERSION 5.4.16

RUN yum install -y \
        php \
        php-mbstring \
        php-pgsql \
        zip \
        unzip \
        git \
        vim \
        httpd && \
    yum clean all

RUN mkdir /app
WORKDIR /app

EXPOSE 80

CMD ["/usr/sbin/apachectl","-DFOREGROUND"]
