sudo apt-get install apache2 php5 libapache2-mod-php5 mysql-server php5-gd libssh2-php php5-mysql  

mysql -u root -p

añadir define('FS_METHOD','direct'); a wp-config.php 

cd wpstore
cp wp-config-sample.php wp-config.php
sudo rsync -avP .  /var/www/html/wpstore/
cd /var/www/html
sudo chown -R javier:www-data *
cd wp-content
mkdir uploads
sudo chown -R :www-data /var/www/html/wpstore/wp-content/uploads
sudo /etc/init.d/apache2 restart
sudo chmod 775 $(find -type d)
sudo chmod 665 $(find -type f)

cambiar el tamaño

sudo geany /etc/php5/apache2/php.ini
upload_max_filesize = 64M
