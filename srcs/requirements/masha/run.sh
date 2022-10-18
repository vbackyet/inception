#!/bin/sh


echo "Create Masha DB"

ls -la
# mkdir -p /home/vbackyet/data/database
# mkdir -p /home/vbackyet/data/www




/usr/bin/mysql_install_db --user=root --basedir=/usr --datadir=/var/lib/mysql
/usr/bin/mysqld --user=root --datadir=/var/lib/mysql & sleep 2
# export MARIADB_DATABASE=mysql
# export MARIADB_USER=vbackyet
# export MARIADB_PASSWORD=123
# export MARIADB_ROOT_PASSWORD=1

mysql -e "CREATE DATABASE IF NOT EXISTS \`${MARIADB_DATABASE}\`;"
mysql -e "CREATE USER IF NOT EXISTS \`${MARIADB_USER}\`@'localhost' IDENTIFIED BY '${MARIADB_PASSWORD}';"
mysql -e "GRANT ALL PRIVILEGES ON \`${MARIADB_DATABASE}\`.* TO \`${MARIADB_USER}\`@'%' IDENTIFIED BY '${MARIADB_PASSWORD}';"
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MARIADB_ROOT_PASSWORD}';"
mysql -e "FLUSH PRIVILEGES;"
mysql -e "SHOW TABLES in ${MARIADB_DATABASE};"

echo "Clode"


pkill mysqld
/usr/bin/mysqld --user=root --datadir=/var/lib/mysql