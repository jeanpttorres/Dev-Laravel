cd /vagrant/vagrant/provision/
sed -i -e 's/\r$//' *.sh
sudo ./apache2.sh
sudo ./java.sh
sudo ./mysql.sh
sudo ./database.sh
sudo ./utils.sh
sudo ./locale.sh
sudo ./php.sh
sudo ./composer.sh
cd /vagrant/dev/instalacao/admin/
sudo /bin/dd if=/dev/zero of=/var/swap.1 bs=1M count=1024
sudo /sbin/mkswap /var/swap.1
sudo /sbin/swapon /var/swap.1
composer update --no-scripts
composer install
php artisan key:generate
php artisan config:clear
php artisan storage:link
