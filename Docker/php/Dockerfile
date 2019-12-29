FROM centos:7

LABEL maintainer "YusukeOno <y-ono@nswt.co.jp>"

ENV PHP_VERSION 5.4.16
ENV LANG ja_JP.UTF-8 \
    LANGUAGE="ja_JP:ja" \
    LC_ALL="ja_JP.UTF-8"

RUN yum groupinstall -y 'Development tools' && \
    yum install -y \
        glibc \
        glibc-common \
        php \
        php-mbstring \
        php-mysqlnd \
        php-devel \
        php-pear \
        vim \
        httpd && \
    yum clean all && \
    localedef -f UTF-8 -i ja_JP ja_JP.UTF-8 && \
    pecl install xdebug-2.2.7

RUN mkdir /app
WORKDIR /app

EXPOSE 80

CMD ["/usr/sbin/apachectl","-DFOREGROUND"]
