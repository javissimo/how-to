sudo apt-get install apache2 php5 libapache2-mod-php5 mysql-server php5-gd libssh2-php php5-mysql  

____________
BASE DE DATOS
---

mysql -u root -p

CREATE DATABASE maribel;

CREATE USER javier@localhost IDENTIFIED BY 'password';

GRANT ALL PRIVILEGES ON maribel.* TO javier@localhost;

FLUSH PRIVILEGES;

exit

________________________

añadir lo siguiente a wp-config.php
```
define('FS_METHOD','direct');
define( 'WP_MEMORY_LIMIT', '96M' );
```
- Cambiar permisos:

```
sudo chmod 777 -R .
sudo chown javier .
sudo chgrp javier .
```
```
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

sudo service mysql restart

cambiar el tamaño

sudo geany wp-config.php
define('WP_MEMORY_LIMIT', '128M');
sudo geany /etc/php5/apache2/php.ini
upload_max_filesize = 64M
```