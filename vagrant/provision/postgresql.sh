#!/bin/bash

psql_version="9.6"

apt-get update

wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

# ATENCAO: Codenome "precise" no comando abaixo! se voce utilizar outras versoes do ubuntu, utilize o codename correto!
sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main" >> /etc/apt/sources.list.d/postgresql.list'

echo "---"
echo "Instalando & Configurando o PostgreSQL-$psql_version..."
sudo apt-get update
sudo apt-get --yes --force-yes install postgresql-$psql_version
sudo apt-get --yes --force-yes install postgresql-contrib-$psql_version

# Substitui o pg_hba.conf com o da pasta config
sudo mv /etc/postgresql/$psql_version/main/pg_hba.conf /etc/postgresql/$psql_version/main/pg_hba.conf.bkp
sudo cp "$VAGRANT_CONFIG_FILES_DIR/pg_hba.conf" /etc/postgresql/$psql_version/main/

sudo echo "listen_addresses='*'" >> /etc/postgresql/$psql_version/main/postgresql.conf

sudo service postgresql restart

create_user_cmd="CREATE USER $DATABASE_USER WITH SUPERUSER PASSWORD '$DATABASE_PASSWORD';"

echo "$create_user_cmd"
sudo -u postgres psql -d postgres -c "$create_user_cmd"

sudo service postgresql restart
