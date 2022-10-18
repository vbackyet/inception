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
# COPY  	./run.sh	.
# RUN		chmod +x 				"./run.sh"
EXPOSE 9000
# ENTRYPOINT						["/usr/sbin/php-fpm8", "-F"]
COPY  	./conf/run.sh	.
RUN		chmod +x 				"./run.sh"

ENTRYPOINT						["./run.sh"]

# FROM	alpine:3.14

# RUN		apk update
# RUN		apk upgrade


# ARG MARIADB_DATABASE \
#     MARIADB_USER \
#     MARIADB_PASSWORD

# #==== PHP_FPM =================================================================#
# RUN		apk add php7 \
# 				php7-fpm \
# 				php7-opcache \
# 				php7-mysqli \
# 				php7-session \
# 				php7-iconv \
# 				php7-json \
# 				php7-gd \
# 				php7-curl \
# 				php7-xml \
# 				php7-common \
# 				php7-imap \
# 				php7-cgi \
# 				php7-pdo \
# 				php7-pdo_mysql \
# 				php7-soap \
# 				php7-xmlrpc \
# 				php7-posix \
# 				php7-mcrypt \
# 				php7-redis \
# 				php7-gettext \
# 				php7-ldap \
# 				php7-ctype \
# 				php7-dom \
# 				php7-phar \
# 				php7-gd \
# 				php7-zlib \
# 				mariadb-client

# RUN		apk add curl wget
# RUN		apk add openrc

# RUN		rm -f /etc/php7/php-fpm.d/www.conf
# COPY	conf/www.conf /etc/php7/php-fpm.d/www.conf

# #==== WORDPRESS ===============================================================#
# RUN		mkdir 					-p /var/www/html
# RUN		adduser 				-u 82 -D -S -G www-data www-data
# RUN		chmod 777 				-R /var/www/html
# RUN		chown 					-R www-data:www-data /var/www/html

# COPY	./conf/wp-config.php	./
# COPY	./conf/run.sh	./
# RUN		chmod +x 				./run.sh
# ENTRYPOINT						["./run.sh"]

# #==============================================================================#
# EXPOSE	9000