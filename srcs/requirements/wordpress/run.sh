#!/bin/sh


echo "Puk wordpress"
# mv					-f wp-cli.phar /usr/local/bin/wp

cp					./wp-config.php /var/www/html/wp-config.php

/usr/sbin/php-fpm8 -F
# /usr/local/bin/wp	core download --allow-root --path="/var/www/html"
