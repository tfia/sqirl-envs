FROM php:8.1-apache

WORKDIR /var/www/html

RUN a2enmod rewrite && \ 
    apt-get update && apt-get install -y \
        libpng-dev \
        libjpeg-dev \
        libfreetype6-dev \
        libzip-dev \
        zip \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-install mysqli pdo pdo_mysql zip

COPY ./vcs /var/www/html