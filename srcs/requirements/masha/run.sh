#!/bin/sh


echo "Create Masha DB"
# Changes the owner or group associated with a file.
if [ ! -d "/run/mysqld" ];
then
	mkdir -p /run/mysqld
fi
chown -R 'mysql:mysql' /run/mysqld

# basic install
chown -R mysql:mysql /var/lib/mysql