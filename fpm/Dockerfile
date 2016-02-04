FROM php:7-fpm

MAINTAINER Mathew Peterson <mathewpeterson@me.com>

COPY conf/php.ini /usr/local/etc/php/conf.d/
COPY conf/pool.conf /usr/local/etc/php/

COPY entrypoint.sh /entrypoint.sh
COPY bin/* /usr/local/bin/
RUN chmod +x -R /usr/local/bin/ /entrypoint.sh

RUN apt-install \
    apt-utils \
    vim \
    less \
    libssl-dev \
    git

RUN docker-php-pecl-install zip

RUN curl -sS https://getcomposer.org/installer | php -- \
      --install-dir=/usr/local/bin \
      --filename=composer

RUN echo "phar.readonly = off" > /usr/local/etc/php/conf.d/phar.ini

EXPOSE 9000

CMD ["/entrypoint.sh", "php-fpm"]
