FROM php:7.4-fpm
COPY docker/supervisord.conf /etc/supervisor/conf.d/supervisord.conf
RUN apt-get update && apt-get install -y libmcrypt-dev supervisor nano\
    mariadb-client libmagickwand-dev --no-install-recommends \
    && pecl install imagick \
    && pecl install redis \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-enable imagick redis
CMD ["/usr/bin/supervisord"]
