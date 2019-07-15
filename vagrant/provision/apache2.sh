#!/bin/bash

apt-get install -y apache2

#sudo mv /etc/apache2/sites-available/default /etc/apache2/sites-available/default.bkp
sed -i -e 's/\r$//' $VAGRANT_CONFIG_FILES_DIR/apache.conf 
sudo cp $VAGRANT_CONFIG_FILES_DIR/apache.conf /etc/apache2/sites-available

sudo cp $VAGRANT_CONFIG_FILES_DIR/ports.conf /etc/apache2/

a2enmod rewrite

sudo a2dissite 000-default
sudo a2dissite default

sudo a2ensite apache

# add as variaveis de ambiente de cfg do apache
cat $VAGRANT_CONFIG_FILES_DIR/apache2envvars.sh >> /etc/apache2/envvars

 sudo cp ../config/apache.conf /etc/apache2/sites-enabled/

sudo service apache2 stop
sudo service apache2 start
