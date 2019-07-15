#!/bin/bash


export DATABASE_HOST='banco_instalacao'
export DATABASE_USER='dev'
export DATABASE_PASSWORD='dev123'


# credenciais de acesso ao banco de dados ao servidor localhost
db_user=$DATABASE_USER
db_password=$DATABASE_PASSWORD
db_host=$DATABASE_HOST

# If /root/.my.cnf exists then it won't ask for root password
if [ -f /root/.my.cnf ]; then

    sudo mysql -e "CREATE DATABASE ${db_host} /*\!40100 DEFAULT CHARACTER SET utf8 */;"
    sudo mysql -e "CREATE USER ${db_user}@localhost IDENTIFIED BY '${db_password}';"
    sudo mysql -e "GRANT ALL PRIVILEGES ON ${db_host}.* TO '${db_user}'@'localhost';"
    sudo mysql -e "FLUSH PRIVILEGES;"

# If /root/.my.cnf doesn't exist then it'll ask for root password   
else
    echo "Please enter root user MySQL password!"
    read rootpasswd
    sudo mysql -uroot -p${rootpasswd} -e "CREATE DATABASE ${db_host} /*\!40100 DEFAULT CHARACTER SET utf8 */;"
    sudo mysql -uroot -p${rootpasswd} -e "CREATE USER ${db_user}@localhost IDENTIFIED BY '${db_password}';"
    sudo mysql -uroot -p${rootpasswd} -e "GRANT ALL PRIVILEGES ON ${db_host}.* TO '${db_user}'@'localhost';"
    sudo mysql -uroot -p${rootpasswd} -e "FLUSH PRIVILEGES;"
fi