#!/bin/bash

# export VAGRANT_DIR="/vagrant"

# export VAGRANT_SCRIPTS_DIR="$VAGRANT_DIR/vagrant"
# export VAGRANT_PROVISION_SCRIPTS_DIR="$VAGRANT_SCRIPTS_DIR/provision"
# export VAGRANT_CONFIG_FILES_DIR="$VAGRANT_SCRIPTS_DIR/config"

# chmod -R 755 $VAGRANT_SCRIPTS_DIR


# # credenciais do superusuario pro postgre da maquina virtual
# export DATABASE_USER='dev'
# export DATABASE_PASSWORD='dev123'

# # configurando locale
# su -c "sh $VAGRANT_PROVISION_SCRIPTS_DIR/locale.sh"

# # instalar pacotes utilitarios para auxiliar o desenvolvedor
# sh "$VAGRANT_PROVISION_SCRIPTS_DIR/utils.sh"

# # instalando postgresql
# # sh "$VAGRANT_PROVISION_SCRIPTS_DIR/postgresql.sh"

# # pega o snap(banco e xml) da fundect e da fapeam e instala na maquina
# # sh "$VAGRANT_PROVISION_SCRIPTS_DIR/restore_production_snap.sh"



# # servidor apache
# sed -i -e 's/\r$//' $VAGRANT_PROVISION_SCRIPTS_DIR/*.sh

# # mysql
# # sh "$VAGRANT_PROVISION_SCRIPTS_DIR/mysql.sh"

# sh "$VAGRANT_PROVISION_SCRIPTS_DIR/apache2.sh"

# # php7
# sh "$VAGRANT_PROVISION_SCRIPTS_DIR/php.sh"

# # xdebug
# sh "$VAGRANT_PROVISION_SCRIPTS_DIR/xdebug.sh"


# sudo service apache2 restart

# # composer
# sh "$VAGRANT_PROVISION_SCRIPTS_DIR/composer.sh"

# # java
# sh "$VAGRANT_PROVISION_SCRIPTS_DIR/java.sh"

# CURRENT_DIR_BOOTSTRAP=$(pwd)

# # cd "$VAGRANT_DIR/bd"
# # sh "./database.sh"


# cd $CURRENT_DIR_BOOTSTRAP

# sudo service apache2 restart