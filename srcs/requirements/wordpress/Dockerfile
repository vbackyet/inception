FROM alpine:3.16.2

ARG MARIADB_DATABASE \
    MARIADB_USER \
    MARIADB_PASSWORD

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
				php8-posix \
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


RUN	rm -f /etc/php7/php-fpm.d/www.conf
COPY	conf/www.conf /etc/php8/php-fpm.d/www.conf
#==== WORDPRESS ===============================================================#

WORKDIR /var/www/
RUN wget https://wordpress.org/latest.zip && \
	mkdir 					-p /var/www/html && \
 	unzip latest.zip -d /var/www/html/ && \
	cp -rf /var/www/html/wordpress/* /var/www/ && \
	rm -rf /var/www/html/wordpress/ && \
	adduser -u 82 -D -S -G www-data www-data && \
 	chown -R www-data:www-data /var/www/ && \
	find /var/www/ -type d -exec chmod 755 {} \; && \
	find /var/www/ -type f -exec chmod 644 {} \;


COPY ./conf/wp-config-create.sh .
RUN sh wp-config-create.sh && rm wp-config-create.sh && \
	chmod -R 0777 wp-content && chown -R www-data:www-data /var/www/wp-config.php

EXPOSE 9000
# ENTRYPOINT						["/usr/sbin/php-fpm8", "-F"]
COPY  	./conf/run.sh	.
RUN		chmod +x 				"./run.sh"

ENTRYPOINT						["./run.sh"]

