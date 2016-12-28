FROM php:7.0.13-cli

MAINTAINER Mathew Peterson <mathewpeterson@me.com>

COPY bin/* /usr/local/bin/
COPY conf/php.ini /usr/local/etc/php/conf.d/

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

CMD ["php", "-a"]
