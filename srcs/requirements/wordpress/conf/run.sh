#!/bin/sh


echo "Puk wordpress"
sleep 5

cp					./conf/wp-config.php /var/www/html/wp-config.php

/usr/sbin/php-fpm8 -F