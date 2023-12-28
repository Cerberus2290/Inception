FROM debian:buster

EXPOSE 9000 \
        6379

RUN apt-get update && \
    apt-get install -y \
    php7.3-fpm \
    php7.3-mysql \
    php7.3-redis \
    mariadb-client \
    nano \
    curl \
    unzip \
    redis-tools && \
    rm -rf /var/lib/apt/lists/*

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d

RUN curl https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar --output /usr/bin/wp --silent

RUN chmod +x ./usr/bin/wp

RUN mkdir /run/php

COPY conf/config.sh /var/www/wordpress/config.sh
RUN chmod +x /var/www/wordpress/config.sh

RUN mkdir -p /var/www/wordpress/bonus
COPY ./bonus/ /var/www/wordpress/bonus

ENTRYPOINT [ "bash", "/var/www/wordpress/config.sh" ]