apt-get update
apt-get install mysql-server
ufw allow mysql
systemctl start mysql
systemctl enable mysql
