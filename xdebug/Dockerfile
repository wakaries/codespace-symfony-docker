FROM php:7.4-apache

COPY 000-default.conf /etc/apache2/sites-available/000-default.conf
COPY xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini
RUN pecl install xdebug-3.0.4 && docker-php-ext-enable xdebug

#RUN apt update && apt upgrade -y && apt install -y curl git nodejs zip unzip libzip-dev libicu-dev nano cron
#RUN apt install software-properties-common apt-transport-https -y
#RUN docker-php-ext-install pdo pdo_mysql mysqli

WORKDIR /var/www/html
