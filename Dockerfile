FROM ubuntu:latest

RUN ln -s /usr/share/zoneinfo/Europe/Madrid /etc/localtime

RUN apt update && apt upgrade -y && apt install -y curl git nodejs zip unzip libzip-dev libicu-dev nano cron
RUN apt install software-properties-common apt-transport-https -y
RUN apt-add-repository ppa:fish-shell/release-3

RUN apt install fish php apache2 libapache2-mod-php composer php-common php-cli php-curl php-xml php-zip php-gd php-mysql php-pgsql php-mongodb php-redis -y
#RUN a2enmod proxy_fcgi setenvif rewrite headers expires
#RUN service apache2 start

#RUN pecl install xdebug && docker-php-ext-enable xdebug
#RUN echo 'zend_extension=xdebug' >> /usr/local/etc/php/php.ini
#RUN echo 'xdebug.mode=develop,debug' >> /usr/local/etc/php/php.ini
#RUN echo 'xdebug.client_host=host.docker.internal' >> /usr/local/etc/php/php.ini
#RUN echo 'xdebug.start_with_request=yes' >> /usr/local/etc/php/php.ini
#RUN echo 'session.save_path = "/tmp"' >> /usr/local/etc/php/php.ini

RUN curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.deb.sh' | bash
RUN apt install symfony-cli

#COPY . /var/www/html

WORKDIR /var/www/html

SHELL ["/bin/bash", "-ec"]
