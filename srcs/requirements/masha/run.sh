#!/bin/sh


echo "Create Masha DB"


/usr/bin/mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
/usr/bin/mysqld --user=mysql --datadir=/var/lib/mysql & sleep 2


mysql -e "CREATE DATABASE  IF NOT EXISTS ${MARIADB_DATABASE};"
mysql -e "CREATE USER '${MARIADB_USER}'@'%' IDENTIFIED BY '${MARIADB_PASSWORD}';" 
mysql -e "GRANT ALL PRIVILEGES ON ${MARIADB_DATABASE}.* TO '${MARIADB_USER}';" 
mysql -e "FLUSH PRIVILEGES;"
echo "Clode"


pkill mysqld
/usr/bin/mysqld --user=mysql --datadir=/var/lib/mysql