FROM alpine:3.16.2


RUN	apk update && apk upgrade && apk add php8 \
				php8-fpm \
				php8-opcache \
				php8-mysqli \
				php8-session \
				php8-iconv \
				php8-json \
				php8-gd \
				php8-curl \
				php8-xml \
				php8-common \
				php8-imap \
				php8-cgi \
				php8-pdo \
				php8-pdo_mysql \
				php8-soap \
				# php8-xmlrpc \
				php8-posix \
				# php8-mcrypt \
				php8-redis \
				php8-gettext \
				php8-ldap \
				php8-ctype \
				php8-dom \
				php8-phar \
				php8-gd \
				php8-zlib \
				curl \
				wget \
				openrc


		# rm -f /etc/php7/php-fpm.d/www.conf
COPY	conf/www.conf /etc/php8/php-fpm.d/www.conf
#==== WORDPRESS ===============================================================#

# WORKDIR 
RUN 	wget https://wordpress.org/latest.zip
RUN		mkdir 					-p /var/www/html
RUN		adduser 				-u 82 -D -S -G www-data www-data
RUN 	unzip latest.zip -d /var/www/html/
RUN 	chown -R www-data:www-data /var/www/html/wordpress/
RUN		find /var/www/html/wordpress -type d -exec chmod 755 {} \;
RUN		find /var/www/html/wordpress -type f -exec chmod 644 {} \;


COPY	./conf/wp-config.php .

COPY  	./run.sh	.
RUN		chmod +x 				"./run.sh"
RUN		cd bin && ls -la
ENTRYPOINT						["./run.sh"]