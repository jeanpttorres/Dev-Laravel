#!/bin/bash

# versao do debug compativel com a versao do php instalada
XDEBUG_VERSION="2.4.1"

# pacotes essenciais para a instalacao do xdebug
apt-get -y install php5.6-dev php-pear build-essential


# criando diretorios pro xdebug escrever seus arquivos
mkdir /var/log/xdebug
chown -R www-data:www-data /var/log/xdebug
chmod -R 775 /var/log/xdebug

apt-get install php5.6-xdebug


# install xdebug malandro
##sudo pecl install xdebug-$XDEBUG_VERSION

# add as cfg do xdebug no php.ini da box
cat $VAGRANT_CONFIG_FILES_DIR/xdebug.appended.ini >> /etc/php/5.6/apache2/php.ini

# add o parametro zend_extension que devera receber o caminho completo ate
# o xdebug.so
##echo 'zend_extension="'$(find / -name 'xdebug.so' 2> /dev/null)'"' >> /etc/php/5.6/apache2/php.ini

sudo service apache2 restart
