#!/bin/bash


echo "---------"
echo "baixando snaps de produ��o"

cd $VAGRANT_DIR

echo "baixando snap da fundect..."
bash snapper/database.sh fundect $DATABASE_USER $DATABASE_PASSWORD
bash snapper/xml.sh fundect $DATABASE_USER $DATABASE_PASSWORD

#if [ ! -f apache/config.inc.php ]; then
#    echo "config.inc.php n�o existente..."
    bash snapper/looklike.sh fundect vagrant
#fi
