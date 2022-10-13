#!/bin/sh


echo "Puk wordpress"
# mkdir - r /usr/local/bin/wp
/usr/local/bin/wp	--info
/usr/local/bin/wp	core download --allow-root --path="/var/www/html"

cp					./wp-config.php /var/www/html/wp-config.php