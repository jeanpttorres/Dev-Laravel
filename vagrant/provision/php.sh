#!/bin/bash

apt-get install software-properties-common
 add-apt-repository ppa:ondrej/php
 apt-get update
 apt-get install php7.0 php7.0-cli libapache2-mod-php7.0 php7.0-mcrypt php7.0-mysql php7.0-curl curl php7.0-mbstring php7.0-json php7.0-xml
 apt-get upgrade -y

mv /etc/php/7.0/apache2/php.ini /etc/php/7.0/apache2/php-back.ini
cp ../config/php.ini /etc/php/7.0/apache2/php.ini

rm -rf /etc/php/7.0/cli/conf.d/apache2-php.ini
ln -s /etc/php/7.0pache2/php.ini /etc/php/7.0/cli/conf.d/apache2-php.ini


# a2dismod php5
# a2enmod php5.6

