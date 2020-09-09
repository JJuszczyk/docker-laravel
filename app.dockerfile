FROM php:7.4-fpm

RUN apt-get update && apt-get install -y libmcrypt-dev \
    mariadb-client libmagickwand-dev --no-install-recommends \
    && pecl install imagick \
    && pecl install redis \
    && docker-php-ext-enable imagick redis \
    && docker-php-ext-install pdo_mysql \
