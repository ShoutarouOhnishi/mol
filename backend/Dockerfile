FROM php:8.2-apache

SHELL ["/bin/bash", "-oeux", "pipefail", "-c"]

ENV COMPOSER_ALLOW_SUPERUSER=1 \
    COMPOSER_HOME=/composer

COPY --from=composer:2.2 /usr/bin/composer /usr/bin/composer

RUN apt-get update && \
    apt-get -y install git unzip libzip-dev libicu-dev libonig-dev libpq-dev libfreetype6-dev libjpeg62-turbo-dev libpng-dev  && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    docker-php-ext-install intl pdo_mysql zip bcmath

RUN docker-php-ext-configure gd --with-freetype=/usr/include/ --with-jpeg=/usr/include/ && \
    docker-php-ext-install -j$(nproc) gd

RUN mv /etc/apache2/mods-available/rewrite.load /etc/apache2/mods-enabled
RUN /bin/sh -c a2enmod rewrite
WORKDIR /var/www/html
COPY . /var/www/html
COPY ./docker/8.2/000-default.conf /etc/apache2/sites-available/000-default.conf
COPY ./docker/8.2/php.ini /usr/local/etc/php/php.ini

# Disable Xdebug for this build
RUN sed -i '/xdebug/d' /usr/local/etc/php/php.ini

RUN composer install \
    && chmod -R 777 storage bootstrap/cache public/
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
RUN apt-get install -y nodejs
RUN npm install npm@latest
